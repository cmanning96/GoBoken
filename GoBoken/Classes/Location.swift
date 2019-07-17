//
//  Location.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit
import CoreLocation

struct Location: Hashable {
  
  var name: String!
  var address: String!
  var image: UIImage!
  var keywords: [String]!
  var description: String!
  
  var coordindates: CLLocation?
  
  init(name: String, address: String, image: UIImage, keywords: [String], description: String) {
    self.name = name
    self.address = address
    self.image = image
    self.keywords = keywords
    self.description = description
  }
  
}
