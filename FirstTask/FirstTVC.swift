//
//  FirstTVC.swift
//  FirstTask
//
//  Created by Константин Натаров on 02.04.2022.
//

import UIKit

class FirstTVC: UITableViewController {
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

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return namesArray.count
    }

    func imageWithImage(image: UIImage, scaledToSize newSize: CGSize) -> UIImage {
        
        UIGraphicsBeginImageContext(newSize)
        image.draw(in: CGRect(x: 0 ,y: 0 ,width: newSize.width ,height: newSize.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!.withRenderingMode(.alwaysOriginal)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Name", for: indexPath)
        cell.imageView?.image = imageWithImage(image: UIImage(named: namesArray[indexPath.row])!, scaledToSize: CGSize(width: 100, height: 50))
        
        cell.textLabel?.text = namesArray[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowSecondTVC" {
            let SecondTVC = segue.destination as! SecondTVC
            switch tableView.indexPathForSelectedRow! {
                case [0, 0]: SecondTVC.arrayOfSmth = algorithmsArray
                case [0, 1]: SecondTVC.arrayOfSmth = patterns
                case [0, 2]: SecondTVC.arrayOfSmth = structuresOfData
                default: break
            }
        }
    }
}
