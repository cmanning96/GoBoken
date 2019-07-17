//
//  MapViewExtension.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import MapKit

extension MKMapView {
  
  func centerOnHoboken() -> Void {
    let regionRadius: CLLocationDistance = 1750
    let hobokenCoords = CLLocation(latitude: 40.746, longitude: -74.030)
    let coordinateRegion = MKCoordinateRegion.init(center: hobokenCoords.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
    self.setRegion(coordinateRegion, animated: true)
  }
  
  func addAnnotationForLocation(location: Location) -> Void {
    let annotation = MapAnnotation(location: location)
    self.addAnnotation(annotation)
  }
  
  func centerOnLocation(location: Location, regionRadius: CLLocationDistance) -> Void {
    let geoCoder = CLGeocoder()
    let address = location.address + ", Hoboken, NJ, 07030"
    geoCoder.geocodeAddressString(address) { (placemarks, error) in
      guard let placemarks = placemarks, let coords = placemarks.first?.location else {
        print("Could not get coords for " + address)
        return
      }
      let coordinateRegion = MKCoordinateRegion(center: coords.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
      self.setRegion(coordinateRegion, animated: true)
    }
  }
  
}
