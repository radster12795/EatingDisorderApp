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
        
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            if let error = error {
                print("Failed to sign user up with error: ", error.localizedDescription)
                return
            }
            
            guard let uid = result?.user.uid else { return }
            
            let values = ["email": email, "username": username]
            
            Firestore.firestore().collection("Users").document(uid).setData(values, completion: { (error) in
                if let error = error {
                    print ("Failed to sign user up with error: ", error.localizedDescription)
                    return
                }
                
                print("Successfully signed up user....")
                self.performSegue(withIdentifier: "toHomeFromSignup", sender: self)
            })
            
        }
    }
    
    

}
