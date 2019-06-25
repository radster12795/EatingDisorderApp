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
    
    
    @IBAction func exportButton(_ sender: Any) {
        createPDF(from: view)
        var alert : UIAlertController
        alert = UIAlertController(title: "Export to PDF", message: "Successfully Saved to PDF", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.backgroundColor = .orange
        let subView = UIView(frame: CGRect(x: 20, y: 20, width: 40, height: 60))
        subView.backgroundColor = .magenta
        view.addSubview(subView)
        
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
    

    func createPDF(from view: UIView) {
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let outputFileURL = documentDirectory.appendingPathComponent("MyPDF.pdf")
        print("URL:", outputFileURL) // When running on simulator, use the given path to retrieve the PDF file
        
        let pdfRenderer = UIGraphicsPDFRenderer(bounds: view.bounds)
        
        do {
            try pdfRenderer.writePDF(to: outputFileURL, withActions: { context in
                context.beginPage()
                view.layer.render(in: context.cgContext)
            })
        } catch {
            print("Could not create PDF file: \(error)")
        }
    }
    
   

}
