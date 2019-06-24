//
//  ViewLogTableViewController.swift
//  EatingDisorderApp
//
//  Created by Louis Deguito on 16/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit
import Firebase

 //Strict for data being recieved Michael Singh 17/06/2019
struct Dates {
    var dates:String
    var meal:String
    var age:String
    var binged:String
    var companion:String
    var feeling:String
    var food:String
    var gender:String
    var place:String
}

class ViewLogTableViewController: UITableViewController {
    

    var db: Firestore!
    
    var datesArray = [Dates]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.separatorStyle = .none

        
      db = Firestore.firestore()
        loadData()
        
        
    }

    //Retrieving data from current user Michael Singh 17/06/2019
    func loadData(){
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        db.collection("Users").document(uid).collection("MealLog").getDocuments { (querySnapshot, error) in
            if let error = error
            {
                print("\(error.localizedDescription)")
            }
            else
            {
                if let snapshot = querySnapshot{
                for document in (querySnapshot?.documents)! {
                    
                    
                    let data = document.data()
                    
                    let dates = data["DateTime"] as? String ?? ""
                    
                    let meal = data["Meal"] as? String ?? ""
                    
                    let age = data["Age"] as? String ?? ""
                    
                    let binged = data["Binged?"] as? String ?? ""
                    
                    let companion = data["Companion"] as? String ?? ""
                    
                    let feeling = data["Feeling"] as? String ?? ""
                    
                    let food = data["Food"] as? String ?? ""
                    
                    let gender = data["Gender"] as? String ?? ""
                    
                    let place = data["Place"] as? String ?? ""
                    
    
                    let mySubstring = dates.prefix(10)
                    
                    
                    let newDate = Dates(dates: String(mySubstring), meal: meal, age: age, binged: binged, companion: companion, feeling: feeling, food: food, gender: gender, place: place)
                        self.datesArray.append(newDate)
                    
                    print(dates)
                    print(meal)
                    
                }
                
                self.tableView.reloadData()
                }
            }
        }
        
    }
        
    
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return datesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)as! ViewLogTableViewCell

        // Configure the cell...
        let dates = datesArray[indexPath.row]
        
         cell.dateLabel.text = dates.dates
         cell.mealLabel.text = dates.meal
        

        
        return cell
    }
 
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath as IndexPath) != nil{
            self.performSegue(withIdentifier: "detailSegue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let dvc = segue.destination as! DetailViewController
                
                let dates = datesArray[indexPath.row]
                dvc.date = dates.dates
                dvc.age = dates.age
                dvc.meal = dates.meal
                dvc.binged = dates.binged
                dvc.gender = dates.gender
                dvc.companion = dates.companion
                dvc.feeling = dates.feeling
                dvc.food = dates.food
                dvc.place = dates.place
            }
        }
    }

}
