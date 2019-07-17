//
//  LocationTableViewCell.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit

class LocationTableViewCell: UITableViewCell {
  
  @IBOutlet private var nameLabel: UILabel!
  @IBOutlet private var addressLabel: UILabel!
  @IBOutlet private var locationImageView: UIImageView!
  @IBOutlet private var keywordsLabel: UILabel!
  
  func setCell(location: Location) {
    self.nameLabel.text = location.name
    self.addressLabel.text = location.address
    self.locationImageView.image = location.image
    self.keywordsLabel.text = getKeywordString(keywords: location.keywords)
    self.imageView?.contentMode = .scaleAspectFit
  }
  
  private func getKeywordString(keywords: [String]) -> String {
    var resultString = ""
    for index in 0..<keywords.count - 1 {
      resultString += keywords[index] + ", "
    }
    resultString += keywords[keywords.count - 1]
    return resultString
  }
  
}
