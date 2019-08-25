//
//  TourViewController.swift
//  GoBoken
//
//  Created by GURPREET SINGH on 8/25/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import Foundation

import UIKit
import CoreLocation

class TourViewController: UIViewController {
    
    @IBOutlet weak var tourtable: UITableView!
    
    @IBAction func onBackClicked(_ sender: Any) {
        print("back clicked")
        _ = navigationController?.popViewController(animated: true)
    }
    
    var InterestingLocations: [Location]!
    var HistoricalLocations: [Location]!
    var FoodLocations: [Location]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        InterestingLocations = createInterestingLocationsArray()
        HistoricalLocations = createHistoricalLocationsArray();
        FoodLocations = createFoodLocationsArray();
    
        let defaults = UserDefaults.standard
        let idx = defaults.integer(forKey: "RecommendationsListLblIdx")
    }
    
    func createInterestingLocationsArray() -> [Location] {
        let temp = [Location(name: "Hoboken Historical Museum",
                      address: "1301 Hudson St, Hoboken, New Jersey 07030",
                 image: UIImage(named: "historical_museum")!,
                 keywords: [LocationKeywords.interesting],
                 description: "The Hoboken Historical Museum collects and displays artifacts in themed exhibitions on Hoboken history and offers educational programs, lectures, tours and hosts films and plays.",
                 coords: CLLocationCoordinate2D(latitude: 40.752223, longitude: 74.025085))]
        return temp
    }
    
    func createHistoricalLocationsArray() -> [Location] {
        var temp = [Location(name: "World War I Memorial",
                      address: "Elysian Park at 11th and Hudson Street",
                      image: UIImage(named: "ww1")!,
                      keywords: [LocationKeywords.historical],
                      description: "Soilders & Sailors Monument. Dedicated on May 30, 1922. Created by Charles Henry Niehaus. Located in Elysian Park.",
                      coords: CLLocationCoordinate2D(latitude: 40.748822, longitude: 74.025767))]
        return temp
    }
    
    func createFoodLocationsArray() -> [Location] {
        var temp = [Location(name: "Pier 13",
                      address: "Pier 13, Hoboken Newport Walkway - Hudson River Waterfront Walkway",
                      image: UIImage(named: "pier13")!,
                      keywords: [LocationKeywords.food],
                      description: "Grab food from local food trucks! Enjoy music and other seasonal activities.",
                      coords: CLLocationCoordinate2D(latitude: 40.751751, longitude: 74.022038))]
        
        return temp
    }
}
