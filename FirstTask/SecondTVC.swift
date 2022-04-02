//
//  SecondTVC.swift
//  FirstTask
//
//  Created by Константин Натаров on 02.04.2022.
//

import UIKit
class SecondTVC: UITableViewController {
    var arrayOfSmth: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

  

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfSmth.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Name2", for: indexPath)
        cell.textLabel?.text = arrayOfSmth[indexPath.row]
        cell.textLabel?.numberOfLines = 0

        return cell
    }
}
