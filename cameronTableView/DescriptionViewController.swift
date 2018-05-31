//
//  DescriptionViewController.swift
//  cameronTableView
//
//  Created by Cameron Jones on 4/4/18.
//  Copyright © 2018 Cameron Jones. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    
    var book:Book?
    var string:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = book?.title!
        authorLabel.text = book?.author!
        
        if let yearString = book?.year {
            yearLabel.text = String(yearString)
        }
        descriptionText.text = book?.description!
        
        // Do any additional setup after loading the view.
        
        titleLabel.sizeToFit()
        authorLabel.sizeToFit()
        yearLabel.sizeToFit()
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
