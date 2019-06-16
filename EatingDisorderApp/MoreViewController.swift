//
//  MoreViewController.swift
//  EatingDisorderApp
//
//  Created by Louis Deguito on 16/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit
import Firebase

class MoreViewController: UIViewController {

    // Init
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        
    }
    
    @IBOutlet weak var label1: UILabel!
    
    // Sign Out Button ~Louis Deguito June 16,2019
    @IBAction func signOutButton(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: nil, message: "Are you sure you want to sign out?", preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "Sign Out", style: .destructive, handler: { (_) in
            self.signOut()
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    // Function to logout ~Louis Deguito June 16,2019
    func signOut() {
        do {
            try Auth.auth().signOut()
            let navController = UINavigationController(rootViewController: LoginController())
            navController.navigationBar.barStyle = .black
            self.present(navController, animated: true, completion: nil)
        } catch let error {
            print("Failed to sign out user..", error)
        }
    }
}
