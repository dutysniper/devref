//
//  FirstTVC.swift
//  FirstTask
//
//  Created by Константин Натаров on 02.04.2022.
//

import UIKit

protocol AlgoSctructPattProtocol {
    var category: String { get }
    var name: String { get }
    var imageName: String { get }
}

class FirstTVC: UITableViewController {
    
    struct Alg: AlgoSctructPattProtocol {
        
        var category: String
        
        var name: String
        
        var imageName: String
        
    }
    struct StructOfData: AlgoSctructPattProtocol {
  
        var category: String
    
        var name: String
    
        var imageName: String
    
    }
    struct Putt: AlgoSctructPattProtocol {
        
        var category: String
        
        var name: String
        
        var imageName: String
        
    }
   
    var alg: [Alg] = [
    Alg(category: "Sort", name: "Сортировка вставками" , imageName: "Сортировка вставками"),
    Alg(category: "Sort", name: "Пузырьковая сортировка" , imageName: "Пузырьковая сортировка"),
    Alg(category: "Sort", name: "Быстрая сортировка" , imageName: "Быстрая сортировка"),
    Alg(category: "Sort", name: "Сортировка выбором" , imageName: "Сортировка выбором"),
    ]
    
    let namesArray = ["Алгоритмы",
                      "Паттерны проектирования",
                      "Структуры данных"]
    
    
    let algorithmsArray = ["Сортировка вставками",
                           "Пузырьковая сортировка",
                           "Быстрая сортировка",
                           "Сортировка выбором",
                           "Сортировка слиянием",
                           "Сортировка Шелла",
                           "Сортировка Тима",
                           "Блочная сортировка",
                           "Поразрядная сортировка"]
    
    let structuresOfData = ["Связные списки",
                            "Стеки",
                            "Очереди",
                            "Множества",
                            "Map",
                            "Хэш-таблицы",
                            "Бинарное дерево поиска",
                            "Префиксное дерево",
                            "Двоичная куча",
                            "Граф"]
    
    let patterns = ["Singletone",
                    "Factory",
                    "Abstract Factrory",
                    "Decorator",
                    "Adapter",
                    "Facade",
                    "Observer",
                    "State",
                    "Strategy",
                    "Prototype",
                    "Builder",
                    "Bridge",
                    "Compose",
                    "Flyweight",
                    "Proxy",
                    "Chain of Responsibility",
                    "Command",
                    "Iterator",
                    "Mediator Controller",
                    "Memento",
                    "Template",
                    "Visitor"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: String(describing: CustomTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CustomTableViewCell.self))
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }

   /* func imageWithImage(image: UIImage, scaledToSize newSize: CGSize) -> UIImage {
        
        UIGraphicsBeginImageContext(newSize)
        image.draw(in: CGRect(x: 0 ,y: 0 ,width: newSize.width ,height: newSize.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!.withRenderingMode(.alwaysOriginal)
    }
    */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomTableViewCell.self))
            as! CustomTableViewCell
        cell.customImageView.image = UIImage(named: namesArray[indexPath.row])
        cell.customLabel.text = namesArray[indexPath.row]
        cell.customLabel.numberOfLines = 0
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goToSecondTVC", sender: nil)
    }
    /* override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    */
   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondTVC" {
            let SecondTVC = segue.destination as! SecondTVC
            switch tableView.indexPathForSelectedRow! {
                // хочу передать массив моделей alg[Alg] в массив моделей
                // smth[Smth] со второго экрана, что б зависимости
                // от данных в массиве моделей менялся экран.
            case [0, 0]: SecondTVC.smth = alg 
                case [0, 1]: SecondTVC.arrayOfSmth = patterns
                case [0, 2]: SecondTVC.arrayOfSmth = structuresOfData
                default: break
            }
        }
    }
}
