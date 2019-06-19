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
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
