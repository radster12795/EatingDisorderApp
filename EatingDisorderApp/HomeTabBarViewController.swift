//
//  HomeTabBarViewController.swift
//  EatingDisorderApp
//
//  Created by Louis Deguito on 17/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit
import Firebase

class HomeTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //STAY SIGNED IN FUNCTION NOT PERFECTLY WORKING ~Louis Deguito June 17,2019
        //if Auth.auth().currentUser == nil {
            //performSegue(withIdentifier: "toLogin", sender: self)
        //}
    }
    

    

}
