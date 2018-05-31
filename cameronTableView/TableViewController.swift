//
//  TableViewController.swift
//  cameronTableView
//
//  Created by Cameron Jones on 3/29/18.
//  Copyright © 2018 Cameron Jones. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var myTableView: UITableView!
    
    var selected:Book?
    var booksArray:[Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        booksArray.append(Book(author: "Author0", title: "Title0", year: 2000, description: "Description"))
        booksArray.append(Book(author: "Author1", title: "Title1", year: 2001, description: "Description"))
        booksArray.append(Book(author: "Author2", title: "Title2", year: 2002, description: "Description"))
        booksArray.append(Book(author: "Author3", title: "Title3", year: 2003, description: "Description"))
        booksArray.append(Book(author: "Author4", title: "Title4", year: 2004, description: "Description"))
        booksArray.append(Book(author: "Author5", title: "Title5", year: 2005, description: "Description"))
        booksArray.append(Book(author: "Author6", title: "Title6", year: 2006, description: "Description"))
        booksArray.append(Book(author: "Author7", title: "Title7", year: 2007, description: "Description"))
        booksArray.append(Book(author: "Author8", title: "Title8", year: 2008, description: "Description"))
        booksArray.append(Book(author: "Author9", title: "Title9", year: 2009, description: "Description"))
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return booksArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! TableViewCell

        // Configure the cell...
        cell.titleLabel?.text = booksArray[indexPath.row].title
        cell.authorLabel?.text = booksArray[indexPath.row].author
        cell.yearLabel?.text = "(" + String(describing: booksArray[indexPath.row].year!) + ")"

        cell.titleLabel.sizeToFit()
        cell.authorLabel.sizeToFit()
        cell.yearLabel.sizeToFit()
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected = booksArray[indexPath.row]
        
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)

        performSegue(withIdentifier: "descriptionSegue", sender: cell)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let descriptionVC = segue.destination as! DescriptionViewController
        descriptionVC.book = selected
    }
 

}
