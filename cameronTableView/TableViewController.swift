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
    
    var selected:Beer?
    var beerArray:[Beer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beerArray.append(Beer(name: "Kentucky Brunch Brand Stout",
            style: "Imperial Stout / 12.00% ABV",
            brewery: "Toppling Goliath Brewing Company",
            description: "This beer is the real McCoy. Barrel aged and crammed with coffee, none other will stand in it’s way. Sought out for being delicious, it is notoriously difficult to track down. If you can find one, shoot to kill, because it is definitely wanted... dead or alive.",
            image: "toppling-goliath")
        )
        
        beerArray.append(Beer(name: "Heady Topper",
            style: "Imperial IPA / 8.00% ABV",
            brewery: "The Alchemist Brewery",
            description: "An American Double IPA 75 IBU 8.0% ABV. Drink from the can.",
            image: "the-alchemist")
        )
        
         beerArray.append(Beer(name: "Barrel-Aged Abraxas",
            style: "Imperial Stout / 11.00% ABV",
            brewery: "Perennial Artisan Ales",
            description: "Imperial Stout aged Twelve months in Rittenhouse Rye barrels with cacao nibs, vanilla beans, ancho chiles & cinnamon sticks",
            image: "perennial-artisan")
        )
        
        beerArray.append(Beer(name: "Marshmallow Handjee",
            style: "Russian Imperial Stout / 15.00% ABV",
            brewery: "3 Floyds Brewing Co.",
            description: "Dark Lord Russian Imperial Stout aged in a variety of Bourbon barrels with vanilla beans.",
            image: "3-floyds")
        )
        
        beerArray.append(Beer(name: "Hunahpu's Imperial Stout",
            style: "Imperial Stout / 11.00% ABV",
            brewery: "Cigar City Brewing",
            description: "Stout aged on Peruvian cacao nibs, ancho and pasilla chiles, cinnamon and Madagascar vanilla beans aged in apple brandy and rum barrels before being blended together.",
            image: "cigar-city")
        )
        
        beerArray.append(Beer(name: "King Julius",
            style: "Imperial IPA / 8.30% ABV",
            brewery: "Tree House Brewing Company",
            description: "The holiday season has a way of stirring up nostalgia. In late 2012, we brewed King Julius on our original Brew Magic brewing system - a whole ten gallons of it! Despite the size of the batch, the memory of it is enormous in our hearts.",
            image: "tree-house")
        )
        
        beerArray.append(Beer(name: "Pliny The Younger",
            style: "Imperial IPA / 10.25% ABV",
            brewery: "Russian River Brewing Company",
            description: "Pliny the Younger, the man, was Pliny the Elder’s nephew and adopted son. They lived nearly 2,000 years ago! Pliny the Elder is our Double IPA, so we felt it was fitting to name our Triple IPA after his son",
            image: "russian-river")
        )
        
        beerArray.append(Beer(name: "Fundamental Observation",
            style: "Imperial Stout / 14.30% ABV",
            brewery: "Bottle Logic Brewing",
            description: "Imperial Stout blended with Madagascar Vanilla Beans & Aged in Bourbon Barrels.",
            image: "bottle-logic")
        )
        
        beerArray.append(Beer(name: "Bourbon County",
            style: "Imperial Stout / 12.90% ABV",
            brewery: "Goose Island Beer Co.",
            description: "Exceoptional beer from Chicagoan exceptionalism.",
            image: "goose-island")
        )
        
        beerArray.append(Beer(name: "Canadian Breakfast Stout",
            style: "Imperial Stout / 11.70% ABV",
            brewery: "Founders Brewing Company",
            description: "Canadian Breakfast Stout (CBS) is the epitome of why we launched the Backstage Series: to bring some of our most sought-after beers, which have been available primarily at the taproom or at a few select events, to a much larger audience.",
            image: "founders")
        )
       
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
        return beerArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! TableViewCell

        // Configure the cell...
        cell.beerNameLabel?.text = beerArray[indexPath.row].name
        cell.breweryLabel?.text = beerArray[indexPath.row].brewery
        cell.styleLabel?.text = beerArray[indexPath.row].style
        cell.breweryImage.image = UIImage(named: beerArray[indexPath.row].image!)

        cell.beerNameLabel.sizeToFit()
        cell.breweryLabel.sizeToFit()
        cell.styleLabel.sizeToFit()
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected = beerArray[indexPath.row]
        
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
        descriptionVC.beer = selected
    }
 

}
