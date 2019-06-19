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
}

class ViewLogTableViewController: UITableViewController {
    

    var db: Firestore!
    
    var datesArray = [Dates]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
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
                        let dates = data["DateTime"] as? Date ?? Date()
                        let meal = data["Meal"] as? String ?? ""
    
                    let format = DateFormatter()
                    format.dateFormat = "yyyy-MM-dd"
                    let formattedDate = format.string(from: dates)
                    
                    
                    let newDate = Dates(dates: formattedDate, meal: meal)
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
        return 110
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
