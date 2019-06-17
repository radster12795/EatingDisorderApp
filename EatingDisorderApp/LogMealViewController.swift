//
//  LogMealViewController.swift
//  EatingDisorderApp
//
//  Created by Louis Deguito on 16/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit
import Firebase

class LogMealViewController: UIViewController {
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var placeTextField: UITextField!
    @IBOutlet weak var companionTextField: UITextField!
    @IBOutlet weak var feelingsTextField: UITextField!
    @IBOutlet weak var mealTextField: UITextField!
    @IBOutlet weak var bingeTextField: UITextField!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    

    @IBAction func saveButton(_ sender: Any) {
        //Initializing the textfields ~Louis Deguito June 17,2019
        guard let food = foodTextField.text else { return }
        guard let place = placeTextField.text else { return }
        guard let companion = companionTextField.text else { return }
        guard let feeling = feelingsTextField.text else { return }
        guard let meal = mealTextField.text else { return }
        guard let binge = bingeTextField.text else { return }
        guard let gender = genderTextField.text else { return }
        guard let age = ageTextField.text else { return }
        
        //Auto current date and time ~Louis Deguito June 17,2019
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let formattedDate = format.string(from: date)
        
        //Dataset to be sent to database ~Louis Deguito June 17,2019
        let mealLog = ["DateTime": formattedDate, "Meal": meal, "Food": food, "Place": place, "Companion": companion, "Feeling": feeling, "Binged?": binge, "Gender": gender, "Age": age]
        
        //UID of current logged in user ~Louis Deguito June 17,2019
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        //Sending data to database (FireStore) ~Louis Deguito ~June 17,2019
        Firestore.firestore().collection("Users").document(uid).collection("MealLog").addDocument(data: mealLog) { (error) in
            
            if let error = error {
                print("Failed to save meal log", error.localizedDescription)
                return
            }
            print("Successfully saved meal log...")
        }
        let alertController = UIAlertController(title: nil, message: "Meal log has been successfully saved", preferredStyle: .alert)        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        textFieldClear()
    }
    
    //Function to clear textfields after saving a meal log ~Louis Deguito June 17,2019
    func textFieldClear() {
        foodTextField.text = ""
        placeTextField.text = ""
        companionTextField.text = ""
        feelingsTextField.text = ""
        mealTextField.text = ""
        bingeTextField.text = ""
        genderTextField.text = ""
        ageTextField.text = ""
    }
    

}
