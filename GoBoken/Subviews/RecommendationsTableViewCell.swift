//
//  RecommendationsTableViewCell.swift
//  GoBoken
//
//  Created by GURPREET SINGH on 8/16/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit

class RecommendationsTableViewCell: UITableViewCell {

    @IBOutlet weak var RecmdImg: UIImageView!
    @IBOutlet weak var RecmdLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
