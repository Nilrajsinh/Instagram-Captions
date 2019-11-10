//
//  ForGirlTableViewController.swift
//  Caption For Instagram
//
//  Created by Nilrajsinh Vaghela on 10/11/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class ForGirlTableViewController: UITableViewController {
    
    var ForGirl = [ "Let’s eyes do the talking.",
                   "Night Out with my hot girls.",
                   "Do you know what dogs do when they see an elephant? They bark.",
                   "I am the intoxication collection of roses, poems, and stardust.",
                   "She acts like the summer and walks like the rain.",
                   "I’m the girl you’ve always wanted.",
                   "A girl should be like a Butterfly. Pretty to see and hard to catch.",
                   "Classy & Fabulous.",
                   "I can’t live without you..... LOL",
                   "Girls can survive without a boyfriend. Girls can’t survive without a best friend.",
                   "The happier you are, the more beautiful you become.",
                   "Beauty never asks for Attention.",
                   "A happy soul is the best shield for a cruel world.",
                   "Be picky with selfies and pickier with men.",
                   "Sometimes you gotta be a beauty and a beast.",
                   "I am not one in a million kinda girl, I am one in a lifespan.",
                   "Darling, your looks can kill.",
                   "They told me I couldn’t that’s why I did.",
                   "A flower doesn’t think of competing to the flower next to it. It just blooms.",
                   "Being yourself is the prettiest thing you can be.",
                   "I am unique.",
                   "Slay girl Slayyy.",
                   "She had a galaxy in her eyes, a universe in her mind.",
                   "Curls run the world.",
                   "Sugar and spice, and everything nice..!",
                   "Never underestimate the power of good attire on a bad day.",
                   "I fantasized about being some sort of a princess.",
                   "I’m feeling myself.",
                   "She turned can’t into cans and dreams into plans.",
                   "Pray, slay and conquer the day.",
                   "A smile is the prettiest thing you can wear.",
                   "Imperfection is beauty, madness is genius and it’s better to be absolutely ridiculous.",
                   "Wakeup and Makeup.",
                   "I’m pretty, but I’m not, like, a ‘pretty girl.’",
                   "If you can’t handle me with my double chin snapshot you don’t deserve me at my Instagram selfie.",
                   "She dreamed incredible dreams, followed her heart and created her own fantasy.",
                   "She leaves a little sparkle wherever she goes.",
                   "You are never fully dressed without a Smile 🙂",
                   "Girly and flirty to edgy and chic.",
                   "Girl with big hair and full of secrets.",
                   "My personality is sassy and cheeky.",
                   "Too Glam to give a Damn.",
                   "May your day feel as good as taking a perfect selfie on the first try.",
                   "Above all, be the heroine of your life, not the victim.",
                   "Portrait of an awkward girl.",
                   "Flashing those eyes like highway signs",
                   "Giggles, secrets, tears and friends – through the years."
                   
                   
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ForGirl.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = ForGirl[indexPath.row]
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
       //MARK:- Here is the code to copy caption by click
       
           let cell = tableView.cellForRow(at: indexPath)
           UIPasteboard.general.string = cell?.textLabel?.text
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
