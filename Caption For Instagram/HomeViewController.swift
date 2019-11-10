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

class HomeViewController:UIViewController {
    
    @IBAction func NewCap(_ sender: Any) {
        
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "New Caption")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
    }
    @IBAction func Popular(_ sender: Any) {
        
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "Popular")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
    }
    @IBAction func ForGirl(_ sender: Any) {
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "For Girl")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
        
    }
    @IBAction func ForBoy(_ sender: Any) {
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "For Boy")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
        
    }
    
    
    
    @IBOutlet weak var newCC: UIButton!
    @IBOutlet weak var Popcc: UIButton!
    @IBOutlet weak var Girlcc: UIButton!
    @IBOutlet weak var Boycc: UIButton!
    
    
   
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
    
        
        // Do any additional setup after loading the view.
    }
}
