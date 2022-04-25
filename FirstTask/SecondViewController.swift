//
//  SecondViewController.swift
//  FirstTask
//
//  Created by Константин Натаров on 22.04.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var tableView2: UITableView!
    var devRefArray: [DevRefModelsProtocol] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView2.delegate = self
        tableView2.dataSource = self
        tableView2.register(UINib(nibName: String(describing: CustomTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: CustomTableViewCell.self))
        }
}

extension SecondViewController: UITableViewDelegate {
    
}

extension SecondViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return devRefArray[section].name.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return devRefArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView2.dequeueReusableCell(withIdentifier: String(describing: CustomTableViewCell.self)) as! CustomTableViewCell
        cell.customImageView.image = UIImage(named: devRefArray[indexPath.section].name[indexPath.row])
        cell.customLabel.text = devRefArray[indexPath.section].name[indexPath.row]
        cell.customLabel.numberOfLines = 0
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = self.devRefArray[section].category
        return section
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .clear
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .gray
    }
}
