//
//  Location.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit
import CoreLocation

class Location: Hashable {
  
  var name: String!
  var address: String!
  var image: UIImage!
  var keywords: [String]!
  var description: String!
  
  var coordindates: CLLocation?
  
  init(name: String, address: String, image: UIImage, keywords: [String], description: String) {
    self.name = name
    self.address = address + ", Hoboken, NJ 07030"
    self.image = image
    self.keywords = keywords
    self.description = description
    setAddress()
  }
  
  func setAddress() -> Void {
    let geoCoder = CLGeocoder()
    geoCoder.geocodeAddressString(address) { (placemarks, error) in
      guard let placemarks = placemarks, let coords = placemarks.first?.location else {
        print("Could not get coords for " + self.address)
        return
      }
      self.coordindates = coords
    }
  }
  
  static func == (lhs: Location, rhs: Location) -> Bool {
    return lhs.name == rhs.name
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(name)
  }
  
}
