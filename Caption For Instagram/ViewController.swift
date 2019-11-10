//
//  ViewController.swift
//  Caption For Instagram
//
//  Created by Nilrajsinh Vaghela on 09/11/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import FirebaseAuth


class ViewController: UIViewController {

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
                if let u = user {
                    
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
        // Do any additional setup after loading the view.
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            
            view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    

}


