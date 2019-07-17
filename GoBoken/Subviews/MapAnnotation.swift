//
//  MapAnnotation.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import MapKit

class MapAnnotation: NSObject, MKAnnotation {
  
  var location: Location
  var coordinate: CLLocationCoordinate2D
  var subtitle: String?
  
  init(location: Location, coord: CLLocation) {
    self.coordinate = coord.coordinate
    self.location = location
    self.subtitle = location.name
  }

  
}
