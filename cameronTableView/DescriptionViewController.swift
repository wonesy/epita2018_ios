//
//  DescriptionViewController.swift
//  cameronTableView
//
//  Created by Cameron Jones on 4/4/18.
//  Copyright © 2018 Cameron Jones. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet weak var beerNameLabel: UILabel!
    @IBOutlet weak var breweryLabel: UILabel!
    @IBOutlet weak var styleLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var breweryImage: UIImageView!
    
    var beer:Beer?
    var string:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        beerNameLabel.text = beer?.name!
        breweryLabel.text = beer?.brewery!
        styleLabel.text = beer?.style!
        descriptionText.text = beer?.description!
        breweryImage.image = UIImage(named: (beer?.image!)!)
        
        
        // Do any additional setup after loading the view.
        
        beerNameLabel.sizeToFit()
        breweryLabel.sizeToFit()
        styleLabel.sizeToFit()
        descriptionText.sizeToFit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
