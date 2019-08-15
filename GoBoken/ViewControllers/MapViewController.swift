//
//  MapViewController.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, UISearchBarDelegate {
    
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
        
        let defaults = UserDefaults.standard
        let Search = defaults.string(forKey: "Search")
        if Search != nil {
            let places = SampleLocations.getSearchResults(searchTxt: Search!)
            for location in places {
                mapView.addAnnotationForLocation(location: location)
            }
        } else {
            addAnnotations()
        }
        
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
        //addAnnotations()
        let defaults = UserDefaults.standard
        let Search = defaults.string(forKey: "Search")
        if Search != nil {
            let places = SampleLocations.getSearchResults(searchTxt: Search!)
            for location in places {
                mapView.addAnnotationForLocation(location: location)
            }
        } else {
            addAnnotations()
        }
    }
    
    func addAnnotations() -> Void {
        let places = SampleLocations.getLocationsThatMatchUserPreferences()
        for location in places {
            mapView.addAnnotationForLocation(location: location)
        }
    }
    
    @IBAction func searchBtnClicked(_ sender: Any) {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        present(searchController, animated: true, completion: nil)
        
        let defaults = UserDefaults.standard
        let Search = defaults.string(forKey: "Search")
        if Search != nil {
            searchController.searchBar.text = Search!
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        let defaults = UserDefaults.standard
        defaults.set(nil, forKey: "Search")
        addAnnotations()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        UIApplication.shared.beginIgnoringInteractionEvents()
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
        self.view.addSubview(activityIndicator)
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        
        let allAnnotations = mapView.annotations
        mapView.removeAnnotations(allAnnotations)
        
        let searchText = String(searchBar.text!)
        let defaults = UserDefaults.standard
        defaults.set(searchText, forKey: "Search")
        
        let places = SampleLocations.getSearchResults(searchTxt: searchText)
        
        activityIndicator.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
        
        for location in places {
            mapView.addAnnotationForLocation(location: location)
        }
    }
}
