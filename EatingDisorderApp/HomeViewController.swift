//
//  HomeViewController.swift
//  EatingDisorderApp
//
//  Created by Louis Deguito on 16/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UITabBarController {
    
    // Init
    override func viewDidLoad() {
        super.viewDidLoad()
        //authenticateUserAndConfigueView()
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let navController = UINavigationController(rootViewController: LoginController())
                navController.navigationBar.barStyle = .black
                self.present(navController, animated: true, completion: nil)
            }
        }
        let viewLogTableController = ViewLogTableViewController()
        viewLogTableController.tabBarItem = UITabBarItem(title: "View Log", image: #imageLiteral(resourceName: "icons8-spiral-bound-booklet-24"), tag: 0)
        
        let logMealViewController = LogMealViewController()
        logMealViewController.tabBarItem = UITabBarItem(title: "Log Meal", image: #imageLiteral(resourceName: "icons8-copybook-30"), tag: 1)
        
        let moreViewController = MoreViewController()
        moreViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)
        
        let viewControlleList = [viewLogTableController, logMealViewController, moreViewController]
        
        viewControllers = viewControlleList
    }
    
    // Welcome Message ~Louis Deguito June 16,2019
    var welcomeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.alpha = 0
        return label
    }()
    
    // API
    func authenticateUserAndConfigueView(){
        
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let navController = UINavigationController(rootViewController: LoginController())
                navController.navigationBar.barStyle = .black
                self.present(navController, animated: true, completion: nil)
            }
        }else{
            //configureViewComponents()
            
        }
    }
    
    //View Constraints
    func configureViewComponents() {
        view.backgroundColor = UIColor.mainBlue()
        
        
        
        //navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_arrow_back_white_24dp"), style: .plain, target: self, action: #selector(handleSignOut))
        
        //navigationItem.leftBarButtonItem?.tintColor = .white
        //navigationController?.navigationBar.barTintColor = UIColor.mainBlue()
        
        //view.addSubview(welcomeLabel)
        //welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Tab Bar
        let viewLogTableController = ViewLogTableViewController()
        viewLogTableController.tabBarItem = UITabBarItem(title: "View Log", image: #imageLiteral(resourceName: "icons8-spiral-bound-booklet-24"), tag: 0)
        
        let logMealViewController = LogMealViewController()
        logMealViewController.tabBarItem = UITabBarItem(title: "Log Meal", image: #imageLiteral(resourceName: "icons8-copybook-30"), tag: 1)
        
        let moreViewController = MoreViewController()
        moreViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)
        
        let viewControlleList = [viewLogTableController, logMealViewController, moreViewController]
        
        viewControllers = viewControlleList
    }
    
    
}
