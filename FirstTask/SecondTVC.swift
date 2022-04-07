//
//  SecondTVC.swift
//  FirstTask
//
//  Created by Константин Натаров on 02.04.2022.
//

import UIKit
class SecondTVC: UITableViewController {
    
    struct Smth: AlgoSctructPattProtocol {
    var category: String
    
    var name: String
    
    var imageName: String
    }
    var smth: [Smth] = []
    
    var arrayOfSmth: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: String(describing: CustomTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CustomTableViewCell.self))
      
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return smth.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomTableViewCell.self))
            as! CustomTableViewCell
        cell.customImageView.image = UIImage(named: smth[indexPath.row].imageName)
        cell.customLabel.text =[indexPath.row]
        cell.customLabel.numberOfLines = 0

        return cell
    }
}
