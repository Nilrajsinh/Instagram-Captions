//
//  HindiTableViewController.swift
//  Caption For Instagram
//
//  Created by Nilrajsinh Vaghela on 13/11/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import GoogleMobileAds

class HindiTableViewController: UITableViewController,GADInterstitialDelegate {
    
    var interstitial: GADInterstitial!
    
    var HindiCap = ["“हुनर सबका अलग होता है दोस्त किसी का छिप जाता है किसी का छप जाता है”",
                    "“बचपन से ही शौक था अच्छा इंसान बनने का, लेकिन बचपन खत्म और शौक भी खत्म।”",
                    "“माचिस तो यूँ ही बदनाम है हुजुर, हमारे तेवर तो आज भी आग लगाते है”",
                    "“नाम बदनाम होने की चिंता छोड़ दी मैंने अब जब गुनाह होगा तो महशोर भी तो होगे।”",
                    "“भाई बोलने का हक़ मैंने सिर्फ दोस्तों को दिया है..! वरना दुश्मन तो आज भी हमें बाप के नाम से पहचानते हैं”",
                    "“लोग कहते है अब तो रुक जा लेकिन मेरा साहस कहता है बस थोड़ा और तेरे मंज़िल पास ही है”",
                    "“भीड़ में खड़ा होना मकसद नहीं है मेरा बल्कि भीड़ जिसके लिए खड़ी है वह बनना है मुझे”",
                    "सुन पगली इस दुनिया में 5 बादशाह है 4 तो ताश के पत्तो मे…और पाचवा वो जिसका तू Attitude पड़ रही हैं",
                    "“Attitude के बाजार में जीने का अलग ही मजा है लोग जलना नहीं छोड़ते और हम मुस्कुराना”",
                    "“मेरें अंदर कमी निकालने से पहले तुम ख़ुद की सारी कमियाँ खत्म करके दिखाओ”",
                    "“जिन्दगी जीते है हम शान से, तभी तो दुश्मन जलते है हमारे नाम से”",
                    "“दोस्त कहते है..भाई, तेरा जैसा कमीना नही देखा कभी, मैंने बोला भाई कभी देखोगे भी नहीं सिर्फ एक ही बचा है।”",
                    "“अपने लिए नहीं तो उन लोगों के लिए कामयाब बनो, जो आपको नाकामयाब देखना चाहते हैं”",
                    "“राज तो हमारा हर जगह पे है। पसंद करने वालों के “दिल” में और नापसंद करने वालों के “दिमाग” में।”",
                    "“मेरा Attitude भगवान् का दिया तोहफा है…कोई मुझसे ये छीन नहीं सकता।”",
                    "“कम बात करे तो – Ego ,ज्याद बात करे तो – Flirt,और कम बात करे तो – Attitude,अजीब है ये दुनिया भी..,करे तो भी काया करे…!”",
                    "“कमियाँ तो बहुत हैं मुझमें…साला कोई निकाल के तो देखे।”",
                    "“Attitude एक नशा है पगली…और मेरे बाप की इस नशे की फैक्ट्री का एकलौता वारिस मैं हूँ”",
                    "“आँख उठाकर भी न देखूँ, जिससे मेरा दिल न मिले, जबरन सबसे हाथ मिलाना, मेरे बस की बात नहीं.!”",
                    "“किनारा न मिले तो कोई बात नहीं, दुसरो को डुबाके मुझे तैरना नहीं हे।”",
                    "“औकात की बात मत कर ऐ दोस्त..लोग तेरी बन्दूक से ज्यादा मेरे आँखों से डरते है”",
                    "“हमारी हैसियत का अंदाज़ा,  तुम ये जान के लगा लो, हम कभी उनके नही होते,  जो हर किसी के हो जाए।”",
                    "“खून में उबाल आज भी खानदानी है ….दुनिया हमारे शौक की नहीं Attitude की दीवानी है”",
                    "“बड़ी से बड़ी हस्ती मिट गयी मुझे झुकाने मे बेटा तू तो कोशिश भी मत करना तेरी उम्र गुजर जायगी मुझे गिराने मे..!”",
                    "“समझा दो उन समझदारों को…कि कातिलों की गली में भी दहशत हमारे ही नाम की ही है”",
                    "“अजीब सी आदत और गज़ब की फितरत है मेरी, मोहब्बत हो या नफरत बहुत शिद्दत से करता हूँ”",
                    "“हम दुश्मनों को भी बड़ी शानदार सज़ा देते हैं, हाथ नहीं उठाते बस नज़रों से गिरा देते हैं।”",
                    "“मुझे खैरात में मिली ख़ुशियाँ अच्छी नहीं लगती, मैं अपने ग़मों में भी रहता हूँ नवाबो की तरह..।”",
                    "“मुझे ख़ुद को बेक़सूर सबित करने की आवश्यकता नहीं है क्योंकि मैं जानता हूँ कि मैं बेक़सूर हूँ।”",
                    "“किसी पर शक करके बर्बाद होने से अच्छा है, किसी पर यकीन करके बर्बाद जो जाओ।”",
                    " #आदत हमारी #खराब नहीं बस #जिंदगी थोड़ी #रॉयल जीते है...",
                    " जिस दिन हमने अपना #रॉयल अंदाज़ दिखाया.. उस दिन ये #Attitude वाली #लड़कियां खड़े खड़े #ढेर हो जाएंगी💪👽",
                    "जीत हासिल करनी हो तो काबिलियत बढाओ, किस्मत की रोटी तो कुत्तेको भी नसीब होती है.!!",
                    "में बंदूक और गिटार दोनों चलाना जानता हूं , तय तुम्हे करना हे की तुम कौन सी धुन पर नाचोगी..।।",
                    "सिर्फ उमर ही छोटी है, जजबा तो दुनिया को मुठ्ठी में करने का रखते है",
                    "इन्कार है जिन्हे आज मुझसे मेरा वक्त देखकर,मै खूद को इतना काबील बनाउंगा वो मिलेंगे मूझसे वक्त लेकर!",
                    "औकात की बात मत कर पगली, हम तो इंटरनेट भी मेन बेलेंस पर चलाते है..",
                    "शेर अपनी ताकत से राजा कहलाता है, जंगल मे चुनाव नही होते ।।",
                    "कोशिश सभी ने की है मगर हर किसी का राज़ नहीं हुआ, ऐटिटूड दिखाना सभी को आता है, मगर सबका अपने जैसा अंदाज़ नहीं हुआ",
                    "#ऐटिटूड दिखना तो बच्चो का काम, हम तो सीधा लोगो को उनकी औकात दिखाते है",
                    "हम सबके #बाप है, जो उलझा हमसे, जाके देख लो समसान में उसकी राख है",
                    "बाकी लड़कों️ के नाम Love Letter लिखा जाता है, हमारे नाम FIR लिखी जाती है..!",
                    "मैनें कभी ईंट का जवाब पत्थर से नहीं दिया, बस वही ईंट वापस दे मारी, पत्थर ढूंढने में कौन टाईम खराब करे.",
                    "सुन ‪‎पगली जैसा तु ‪‎सोचती हो,, वैसा मै हु नहीं और ‪‎जैसा मै हु ना,,,, वैसा तू ‪#सोच भी नही सकती….",
                    "पसंद है मुझे.. उन लोगों से हारना… जो लोग मेरे हारने की वजह से पहली बार जीते हों..",
                    "देख पगली हम उस College में पढने जाते है जहाँ, Girls क्या Teacher भी कहती है कल Kyu नही आया.."
    
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
        return HindiCap.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = HindiCap[indexPath.row]

        // Configure the cell...

    
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
