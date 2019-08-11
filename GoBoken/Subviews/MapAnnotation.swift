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
    
    init(location: Location) {
        if let coords = location.coordindates {
            self.coordinate = coords
        } else {
            print("No coordinates for " + location.name + " upon initializing MapAnnotation")
            self.coordinate = CLLocationCoordinate2D()
        }
        self.location = location
        self.subtitle = location.name
    }
    
    
}
