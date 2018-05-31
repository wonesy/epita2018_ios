//
//  TableViewCell.swift
//  cameronTableView
//
//  Created by Cameron Jones on 4/4/18.
//  Copyright © 2018 Cameron Jones. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var beerNameLabel: UILabel!
    @IBOutlet weak var imageVar: UIImageView!
    @IBOutlet weak var styleLabel: UILabel!
    @IBOutlet weak var breweryLabel: UILabel!
    @IBOutlet weak var breweryImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
