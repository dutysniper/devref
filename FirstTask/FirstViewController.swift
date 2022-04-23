//
//  FirstViewController.swift
//  FirstTask
//
//  Created by Константин Натаров on 22.04.2022.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var algorithm: [DevRefModelsProtocol] = [
        Algorithm(category: "Сортировка", name: ["Сортировка вставками",
                                                 "Пузырьковая сортировка",
                                                 "Быстрая сортировка",
                                                 "Сортировка выбором",
                                                 "Сортировка слиянием",
                                                 "Сортировка Шелла",
                                                 "Сортировка Тима",
                                                 "Блочная сортировка",
                                                 "Поразрядная сортировка"])]
    
    var structures: [DevRefModelsProtocol] = [
        StructOfData(category: "none", name: ["Связные списки",
                                              "Стеки",
                                              "Очереди",
                                              "Множества",
                                              "Map",
                                              "Хэш-таблицы",
                                              "Бинарное дерево поиска",
                                              "Префиксное дерево",
                                              "Двоичная куча",
                                              "Граф"])]
    
    var pattern: [DevRefModelsProtocol] = [
        Pattern(category: "Creational ", name: ["Singletone",
                                               "Abstract Factory",
                                               "Builder",
                                               "Factory",
                                               "Lazy initialization",
                                               "Object pool",
                                               "Prototype",
                                               "Multiton"]),
        
        Pattern(category: "Behavioral", name: ["Chains of Responsibility",
                                              "Command",
                                              "Interpreter",
                                              "Iterator",
                                              "Mediator",
                                              "Memento",
                                              "Null Object",
                                              "Obsever",
                                              "Servant",
                                              "Specification",
                                              "State",
                                              "Strategy",
                                              "Template method",
                                              "Visitor",
                                              "Simple Policy",
                                              "Event listener",
                                              "Single-serving visitor",
                                              "Hierarchical visitor"]),
        
        Pattern(category: "Structural", name: ["Adapter",
                                              "Bridge",
                                              "Composite",
                                              "Decorator",
                                              "Facade",
                                              "Front controller",
                                              "Flyweight",
                                              "Proxy"])]
    let namesArray = ["Алгоритмы",
                      "Паттерны проектирования",
                      "Структуры данных"]
      
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: String(describing: CustomTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CustomTableViewCell.self))
    }

    
    
}
extension FirstViewController: UITableViewDelegate {
    
}
extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }

   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomTableViewCell.self))
            as! CustomTableViewCell
        cell.customImageView.image = UIImage(named: namesArray[indexPath.row])
        cell.customLabel.text = namesArray[indexPath.row]
        cell.customLabel.numberOfLines = 0
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        navigationController?.pushViewController(secondVC, animated: true)
        
        switch tableView.indexPathForSelectedRow! {
            case [0, 0]: secondVC.devRefArray = algorithm
            case [0, 1]: secondVC.devRefArray = pattern
            case [0, 2]: secondVC.devRefArray = structures
            default: break
        }
    }
}
