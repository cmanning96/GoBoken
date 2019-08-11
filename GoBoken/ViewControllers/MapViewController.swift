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
        
        //    let defaults = UserDefaults.standard
        //    let Name = defaults.string(forKey: "Name")
        //    print(Name)
        //    let Age = defaults.string(forKey: "Age")
        //    print(Age)
        //    let Gender = defaults.string(forKey: "Gender")
        //    print(Gender)
        
        mapView.centerOnHoboken()
        addAnnotations()
        setupNavigationBarItems()
    }
    
    private func setupNavigationBarItems() {
        let image = UIImage(named: "app_logo")
        let titleImageView = UIImageView(image : image)
        titleImageView.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView.removeAnnotations(mapView.annotations)
        addAnnotations()
    }
    
    func addAnnotations() -> Void {
        let places = SampleLocations.getLocationsThatMatchUserPreferences()
        for location in places {
            mapView.addAnnotationForLocation(location: location)
        }
    }
    
}
