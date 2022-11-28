//
//  CustomTableViewCell.swift
//  FirstTask
//
//  Created by Константин Натаров on 05.04.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var customImageView: UIImageView!
    @IBOutlet weak var customLabel: UILabel!
    
    override func awakeFromNib() {
        customLabel.text = "Название"
       
    }
}
