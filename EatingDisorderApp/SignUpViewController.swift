//
//  SignUpViewController.swift
//  EatingDisorderApp
//
//  Created by Louis Deguito on 16/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
        guard let email = emailTextField.text else { return }
        guard let username = usernameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        //Accessing Firebase to create a new user for the application ~Louis Deguito June 17,2019
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            if let error = error {
                print("Failed to sign user up with error: ", error.localizedDescription)
                var alert : UIAlertController
                alert = UIAlertController(title: "Sign Up", message: "Sorry please try again", preferredStyle: .alert)
                
                let action = UIAlertAction(title: "Ok", style: .default) { (action) in
                    self.dismiss(animated: true, completion: nil)
                }
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
                return
            }
            
            guard let uid = result?.user.uid else { return }
            
            let values = ["email": email, "username": username]
            
            Firestore.firestore().collection("Users").document(uid).setData(values, completion: { (error) in
                if let error = error {
                    print ("Failed to sign user up with error: ", error.localizedDescription)
                    
                    //Alert to pop up when user is unsuccessful in creating a new account ~Louis Deguito June 17,2019
                    var alert : UIAlertController
                    alert = UIAlertController(title: "Sign Up", message: "Sorry please try again", preferredStyle: .alert)
                    
                    let action = UIAlertAction(title: "Ok", style: .default) { (action) in
                        self.dismiss(animated: true, completion: nil)
                    }
                    alert.addAction(action)
                    self.present(alert, animated: true, completion: nil)
                    
                    return
                }
                
                print("Successfully signed up user....")
                
                //Alert to pop up when user has successfully created an account ~Louis Deguito June 24,2019
                var alert : UIAlertController
                alert = UIAlertController(title: "Sign Up", message: "You have successfully created an account", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                    self.performSegue(withIdentifier: "toSignUp2", sender: self)
                })
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
            })
            
        }
    }
    
    

}
