//
//  NewCapTableViewController.swift
//  Caption For Instagram
//
//  Created by Nilrajsinh Vaghela on 10/11/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class NewCapTableViewController: UITableViewController,GADInterstitialDelegate {
    
    var interstitial: GADInterstitial!
    
    var NewCap = [ "Whatever is good for your soul, do that",
                   "Even the stars were jealous of the sparkle in her eyes",
                   "Stress less and enjoy the best",
                   "Get out there and live a little",
                   "I’m not high maintenance, you’re just low effort",
                   "I’m not gonna sugar coat the truth, I’m not Willy Wonka",
                   "Life is better when you’re laughing",
                   "Look for the magic in every moment",
                   "Vodka may not be the answer but it’s worth a shot",
                   "A sass a day keeps the basics away",
                   "Me, myself and I",
                   "But first, let me take a selfie",
                   "I like sarcasm. It is like punching people in the face. With Words!",
                   "She is my Best Friend. You break her heart, I will break your face.",
                   "Screw perfection.",
                   "Where are you moving? Onto better things.",
                   "Maybe if we tell people the brain is an app, they will start using it.",
                   "CaptBeautiful things don’t ask for attention.ion3",
                   "Role models that look like supermodels.",
                   "ETC. End of Thinking Capacity.",
                   "Always remember you’re unique, just like everyone else.",
                   "Enjoy at least one sunset per day!",
                   "This is who I am. Nobody said you had to like it.",
                   "There’s always a wild side to an innocent face.",
                   "If I was to be controlled, I would have come with a remote.",
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
                   "“Go to hell!” “Oh, honey…where do you think I come from?”",
                   "Be the kind of girl that makes other girls step up their game.",
                   "Clever as the devil, twice as pretty",
                   "I need someone who sees the fire in my eyes and wants to play with it.",
                   "I am not always a bitch…just kidding, go f*ck yourself!",
                   "Act like a lady, think like a boss.",
                   "Life isn’t perfect, but your outfit can be.",
                   "There is no WE in fries.",
                   "Half coffee, half human.",
                   "Kind people are my kinda people.",
                   "Good food = Good mood"
                   
                   
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
        return NewCap.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = NewCap[indexPath.row]

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
