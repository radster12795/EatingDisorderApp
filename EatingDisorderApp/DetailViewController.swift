//
//  DetailViewController.swift
//  EatingDisorderApp
//
//  Created by Michael Singh on 22/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var companionLabel: UILabel!
    
    @IBOutlet weak var mealLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var bingedLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var feelingLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    var date = ""
    var meal = ""
    var age = ""
    var food = ""
    var feeling = ""
    var gender = ""
    var place = ""
    var companion = ""
    var binged = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateLabel.text = "\(date)"
        mealLabel.text = "\(meal)"
        ageLabel.text = "\(age)"
        bingedLabel.text = "\(binged)"
        placeLabel.text = "\(place)"
        genderLabel.text = "\(gender)"
        companionLabel.text = "\(companion)"
        feelingLabel.text = "\(feeling)"
        foodLabel.text = "\(food)"
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
