//
//  ViewLogTableViewCell.swift
//  EatingDisorderApp
//
//  Created by Michael Singh on 19/06/19.
//  Copyright © 2019 Louis and Michael Team. All rights reserved.
//

import UIKit

class ViewLogTableViewCell: UITableViewCell{
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var mealLabel: UILabel!
    @IBOutlet weak var colourView: UIView!
    
  
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        colourView.layer.shadowOffset = CGSize(width: 0, height: 0)
        colourView.layer.shadowColor = UIColor.black.cgColor
        colourView.layer.shadowRadius = 5
        
        colourView.layer.shadowOpacity = 0.50
        colourView.layer.masksToBounds = false;
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
