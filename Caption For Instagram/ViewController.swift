//
//  ViewController.swift
//  Caption For Instagram
//
//  Created by Nilrajsinh Vaghela on 09/11/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import FirebaseAuth
import GoogleMobileAds

class ViewController: UIViewController,GADBannerViewDelegate {
    var bannerView: GADBannerView!


    @IBOutlet weak var Login: UIButton!
    @IBOutlet weak var Email: UITextField!
    
    @IBAction func PWHide(_ sender: Any) {
        
        Password.isSecureTextEntry = !(Password.isSecureTextEntry)
        
    }
    
    
    
    @IBOutlet weak var Password: UITextField!
    
    @IBAction func Login_btn(_ sender: Any) {
        print("button pressed")
        
       
    
        
        if let Email = Email.text,let Password = Password.text  {
            Auth.auth().signIn(withEmail: Email, password: Password) { (user, error) in
                if user != nil {
                    
                    
                    
                    self.performSegue(withIdentifier: "Home", sender: self)
                    
                }
                else {
                    let alert = UIAlertController(title: "Invalid Details", message: "Email or Password did not match", preferredStyle: .alert)
                    
                    
                    let alertOkAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
                    
                    alert.addAction(alertOkAction)
                    
                    self.present(alert, animated: true, completion: nil)
                
                
            }
        }
        
       
    }
    


}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Login.layer.cornerRadius = 12
        Login.layer.borderWidth = 2.0;
        //Login.layer.borderColor = [UIColor blackcolor].CGColor;
        
        // Do any additional setup after loading the view.
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            
            view.addGestureRecognizer(tap)
        
        
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)

        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-8978960658795160/2265276896"
         bannerView.rootViewController = self
        bannerView.load(GADRequest())
        bannerView.delegate = self
        
        
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
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    

}


