//
//  MapViewController.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
  
  @IBOutlet private var mapView: MKMapView!

  override func viewDidLoad() {
    super.viewDidLoad()
    mapView.centerOnHoboken()
    addAllAnnotations()
  }
  
  func addAllAnnotations() -> Void {
    let places = SampleLocations.getLocationsThatMatchUserPreferences()
    for location in places {
      mapView.addAnnotationForLocation(location: location)
    }
  }
  
}
