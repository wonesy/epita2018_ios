//
//  TableViewCell.swift
//  cameronTableView
//
//  Created by Cameron Jones on 4/4/18.
//  Copyright © 2018 Cameron Jones. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageVar: UIImageView!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
