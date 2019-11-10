//
//  ForBoyTableViewController.swift
//  Caption For Instagram
//
//  Created by Nilrajsinh Vaghela on 10/11/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class ForBoyTableViewController: UITableViewController {
    
    var ForBoy = [ "Be a warrior in a room of worriers.",
                   "Women were created for a reason, to keep men sane.",
                   "I never let my Loyalty become Slavery.",
                   "Men are not against you; they are merely for themselves.",
                   "Girl, I have to call you back.",
                   "Being an adult is like folding a fitted sheet. No one really knows how.",
                   "Men are like wine – some turn to vinegar, but the best improve with age",
                   "Your intelligence is my common sense.",
                   "We met for a reason. You’re either a blessing or a lesson.",
                   "Nothing can stop me, I’m all the way up.",
                   "Never mistake my kindness for weakness.",
                   "Love your haters – they’re your biggest fans",
                   "I’m sorry if I offended you with my common sense.",
                   "You couldn’t handle me even if I came with instructions.",
                   "Ignore me, I don’t care I’m used to it anyway, I’m invisible.",
                   "Bitch, please you’ve you more issues than vogue.",
                   "Treat Me Like a Joke and I Will Leave You Like It’s Funny.",
                   "I go on and on. Can’t understand how I last so long.",
                   "Don’t stand to close to the heater, babe. Plastic melts.",
                   "I’m everything you want but can’t have.",
                   "Every man’s ego says; “Macho Law prohibits me from admitting I’m wrong.",
                   "It is not an attitude. It is the way I am.",
                   "Only a real man is able to stick to just one woman and treat her special, always.",
                   "Let men see, let them know, a real man, who lives as he was meant to live.",
                   "Here’s to staying positive and testing negative.",
                   "I don’t care if you don’t like me, I wasn’t put on earth to entertain you.",
                   "I’ll never try to fit in. I was born to STAND OUT.",
                   "Boys got swagger, men have style, but gentlemen have class.",
                   "I don’t race, I don’t chase that’s why I can’t be replaced."
                   
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
        return ForBoy.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = ForBoy[indexPath.row]

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
