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
    
    //Init
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboard()
    }
    
    @IBAction func logInButton(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        
        //Accessing Firebase to log in user ~Louis Deguito June 17,2019
         Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if let error = error {
                
                print("Failed to sign in user with error: ", error.localizedDescription)
                //Alert to pop up when user is unsuccessful in logging in ~Louis Deguito June 17,2019
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
            
            //Alert to pop up when user successfully logged in ~Louis Deguito June 24, 2019
            var alert : UIAlertController
            alert = UIAlertController(title: "Login", message: "You have successfully logged in!", preferredStyle: .alert)
            
            
            let action2 = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                self.performSegue(withIdentifier: "toHome", sender: self)
            })
            alert.addAction(action2)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
   

}
// Extension to hide keyboard when outside of textfield is pressed ~Louis Deguito June 23,2019
extension UIViewController{
    
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
