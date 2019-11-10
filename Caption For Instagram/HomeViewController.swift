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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleLogout(_ sender:Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
}
