//
//  HomeViewController.swift
//  Caption For Instagram
//
//  Created by Nilrajsinh Vaghela on 10/11/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import GoogleMobileAds


class HomeViewController:UIViewController, GADBannerViewDelegate, GADInterstitialDelegate {
    
    
     var bannerView: GADBannerView!
    var interstitial: GADInterstitial!
    
    
    @IBAction func NewCap(_ sender: Any) {
        
        if interstitial.isReady {
            interstitial.present(fromRootViewController: self)
        }
        
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "New Caption")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
    }
    @IBAction func Popular(_ sender: Any) {
        
        if interstitial.isReady {
            interstitial.present(fromRootViewController: self)
        }
        
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "Popular")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
    }
    @IBAction func ForGirl(_ sender: Any) {
        
        if interstitial.isReady {
                   interstitial.present(fromRootViewController: self)
               }
        
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "For Girl")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
        
    }
    @IBAction func ForBoy(_ sender: Any) {
        
        if interstitial.isReady {
                   interstitial.present(fromRootViewController: self)
               }
        
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "For Boy")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
        
    }
    
    @IBAction func Hindi(_ sender: Any) {
        
        if interstitial.isReady {
                   interstitial.present(fromRootViewController: self)
               }
        
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "Hindi")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
        
        
    }
    
    
    
    @IBOutlet weak var newCC: UIButton!
    @IBOutlet weak var Popcc: UIButton!
    @IBOutlet weak var Girlcc: UIButton!
    @IBOutlet weak var Boycc: UIButton!
    @IBOutlet weak var Hindicc: UIButton!
    
    
   
    @IBAction func handleLogout(_ sender:Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newCC.layer.cornerRadius = 12
        newCC.layer.borderWidth = 2.0;
        
        Popcc.layer.cornerRadius = 12
        Popcc.layer.borderWidth = 2.0;
        
        Girlcc.layer.cornerRadius = 12
        Girlcc.layer.borderWidth = 2.0;
        
        Boycc.layer.cornerRadius = 12
        Boycc.layer.borderWidth = 2.0;
        
        Hindicc.layer.cornerRadius = 12
        Hindicc.layer.borderWidth = 2.0;
    
        
        // Do any additional setup after loading the view.
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)

        addBannerViewToView(bannerView)
        
        
        bannerView.adUnitID = "ca-app-pub-8978960658795160/2265276896"
         bannerView.rootViewController = self
        bannerView.load(GADRequest())
        bannerView.delegate = self
        
        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-8978960658795160/2409241963")
        let request = GADRequest()
        interstitial.load(request)
        interstitial.delegate = self
        
        interstitial = createAndLoadInterstitial()
        
        
        
        
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
    
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
     bannerView.translatesAutoresizingMaskIntoConstraints = false
     view.addSubview(bannerView)
     view.addConstraints(
       [NSLayoutConstraint(item: bannerView,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: bottomLayoutGuide,
                           attribute: .top,
                           multiplier: 1,
                           constant: 0),
        NSLayoutConstraint(item: bannerView,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0)
       ])
    }
}
