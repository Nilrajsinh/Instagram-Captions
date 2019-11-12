//
//  PopularTableViewController.swift
//  Caption For Instagram
//
//  Created by Nilrajsinh Vaghela on 10/11/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class PopularTableViewController: UITableViewController,GADInterstitialDelegate {
    
    var interstitial: GADInterstitial!
    
    var Popular = [
        
        "“Go to hell!” “Oh, honey…where do you think I come from?”",
        "Try me and I’ll have you people reading eulogies.",
                   "Hating me doesn’t make you pretty.",
                   "Sassy since 1999 ♥ ♥",
                   "Wild but fragile",
                   "Cinderella never asked for a prince",
                   "Yo can ask Tommy, Hilfiger it out",
                   "All I do is upgrade",
                   "No pen, no paper but I still draw attention”",
                   "I’m LIKE NIKE where the check at.",
                   "Know your Worth, Then add Tax",
                   "They on my Drip, tryna ride my wave",
                   "Don’t Study me. You won’t Graduate!",
                   "Shuffle the deck, I’m the Queen of the pack”",
                   "Catching Flights, Not Feelings!",
                   "Life size doll, no, you can’t play with me",
                   "Just wing it. Life, eyeliner, everything.",
                   "You’re way too short to get on this ride.",
                   "99% angel but damn that 1%”",
                   "They see me rolling, they hatin’",
                   "I’ve got thick skin and an elastic heart.",
                   "You wanted fire? Sorry, my speciality is ice.",
                   "A sass a day keeps the basics away.”",
                   "Ouuuu! I got ‘em mad my FAULT!",
                   "When the sun goes down, I glow up!",
                   "Strong alone, unstoppable together.”",
                   "My hair is the crown I never take off.",
                   "Shut up, I wear heels bigger than your d*ck.",
                   "Sassy, Classy, and a bit smart assy.",
                   "Drippin in finesse”",
                   "I like my coffee how I like myself: Dark, bitter, and too hot for you.",
                   "They say don’t try this at home…so I went to my friends home!",
                   "Mom: Why is everything on the floor? Me: Gravity!",
                   "Rule number 1: Never be number two!",
                   "Just like the alphabet, B***H I come before You.",
                   "I like hashtags because they look like waffles.",
                   "I like my coffee how I like myself: dark, bitter and way too hot for you!",
                   "Be savage, not average.",
                   "I hope Kharma slaps you in the fact…before I do it!",
                   "A sassy day keeps the basics away.",
                   "I do a thing called what I want.",
                   "I wish common sense was more common.",
                   "My room was clean. Then I had to decide what I should wear.",
                   
                   
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2409241963")
        let request = GADRequest()
        interstitial.load(request)
        interstitial = createAndLoadInterstitial()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func createAndLoadInterstitial() -> GADInterstitial {
      var interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2409241963")
      interstitial.delegate = self
      interstitial.load(GADRequest())
      return interstitial
    }

    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
      interstitial = createAndLoadInterstitial()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Popular.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = Popular[indexPath.row]

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
       //MARK:- Here is the code to copy caption by click
       
           let cell = tableView.cellForRow(at: indexPath)
           UIPasteboard.general.string = cell?.textLabel?.text
        
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
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
