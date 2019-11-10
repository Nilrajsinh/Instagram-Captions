//
//  Register_ViewController.swift
//  Caption For Instagram
//
//  Created by Nilrajsinh Vaghela on 09/11/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit
import FirebaseAuth

class Register_ViewController: UIViewController {
    @IBOutlet weak var Register: UIButton!
    @IBOutlet weak var Email_R: UITextField!
    
    @IBOutlet weak var password_R: UITextField!
    
    
    @IBAction func Register(_ sender: Any) {
    
        if  let Email = Email_R.text,let Password = password_R.text{
            
            Auth.auth().createUser(withEmail: Email, password: Password) { (user, Error) in
                if user != nil {
                    self.performSegue(withIdentifier: "Home", sender: self)
                }
                else{
                    
                    let alert = UIAlertController(title: "Duplicate Email", message: "Email is already registered", preferredStyle: .alert)
                    
                    
                    let alertOkAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
                    
                    alert.addAction(alertOkAction)
                    
                    self.present(alert, animated: true, completion: nil)
                   
                               
                }
            }
           
        }
        
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    @objc func dismissKeyboard() {
           view.endEditing(true)
       }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
