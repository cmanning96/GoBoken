//
//  LocationViewController.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import MapKit
import UIKit

class LocationViewController: UIViewController {
  
  @IBOutlet private var scrollView: UIScrollView!
  @IBOutlet private var contentView: UIView!
  @IBOutlet private var locationImageView: UIImageView!
  @IBOutlet private var locationNameLabel: UILabel!
  @IBOutlet private var locationAddressLabel: UILabel!
  @IBOutlet private var locationDescriptionTextView: UITextView!
  
  @IBOutlet private var mapView: MKMapView!
  
  var stateOfMap: MapState!
  var location: Location!
  var defaultMapHeight: CGFloat!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    stateOfMap = .retracted
    locationImageView.layer.cornerRadius = locationImageView.frame.width / 2
    locationImageView.clipsToBounds = true
    mapView.centerOnHoboken()
    navigationController?.title = "Map"
    locationImageView.image = location.image
    locationNameLabel.text = location.name
    locationAddressLabel.text = location.address
    locationDescriptionTextView.text = location.description
    locationDescriptionTextView.isUserInteractionEnabled = false
    scrollView.isScrollEnabled = true
    locationDescriptionTextView.translatesAutoresizingMaskIntoConstraints = true
    locationDescriptionTextView.sizeToFit()
    locationDescriptionTextView.isScrollEnabled = false
    scrollView.contentSize.height = locationDescriptionTextView.frame.maxY
    mapView.addAnnotationForLocation(location: location)
    mapView.centerOnLocation(location: location, regionRadius: 500)
    let tap = UITapGestureRecognizer(target: self, action: #selector(toggleMapSize))
    mapView.addGestureRecognizer(tap)
    defaultMapHeight = mapView.frame.height
  }
  
  @objc func toggleMapSize() -> Void {
    if stateOfMap == .retracted {
      stateOfMap = .expanded
      for subview in [locationImageView, locationNameLabel, locationAddressLabel, locationDescriptionTextView] {
        subview?.isHidden = true
      }
      UIView.animate(withDuration: 0.5) {
        self.mapView.frame.size = CGSize(width: self.mapView.frame.width, height: 600)
      }
    } else {
      stateOfMap = .retracted
      for subview in [locationImageView, locationNameLabel, locationAddressLabel, locationDescriptionTextView] {
        subview?.isHidden = false
      }
      UIView.animate(withDuration: 0.5) {
        self.mapView.frame.size = CGSize(width: self.mapView.frame.width, height: self.defaultMapHeight)
      }
    }
  }
  
  @IBAction func dismissViewController(_ sender: UIButton) -> Void {
    dismiss(animated: true, completion: nil)
  }
  
}

enum MapState {
  case expanded, retracted
}
