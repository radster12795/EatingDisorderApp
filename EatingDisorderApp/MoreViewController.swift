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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //Sign out button ~Louis Deguito June 17,2019
    @IBAction func signOutButton(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: nil, message: "Are you sure you want to sign out?", preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "Sign Out", style: .destructive, handler: { (_) in
            self.signOut()
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    @IBAction func printButton(_ sender: UIButton) {
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        print (uid)
    }
    
    
    // Function to sign out from firebase ~Louis Deguito June 17,2019
    func signOut() {
        do {
            try Auth.auth().signOut()
        
        //Closes the app after sign out ~Louis Deguito June 17,2019
        UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
            
        } catch let error {
            print("Failed to sign out user..", error)
        }
    }

}
