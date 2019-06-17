//
//  LogInViewController.swift
//  EatingDisorderApp
//
//  Created by Louis Deguito on 16/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInButton(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        
        
         Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if let error = error {
                
                print("Failed to sign in user with error: ", error.localizedDescription)
                
                var alert : UIAlertController
                alert = UIAlertController(title: "Login", message: "Sorry please try again", preferredStyle: .alert)
                
                let action = UIAlertAction(title: "Ok", style: .default) { (action) in
                    self.dismiss(animated: true, completion: nil)
                }
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
                return
            }
            
            print("Successfully logged user in....")
            self.performSegue(withIdentifier: "toHome", sender: self)
        }
    }
    
   

}
