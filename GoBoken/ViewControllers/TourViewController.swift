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
                      coords: CLLocationCoordinate2D(latitude: 40.752223, longitude: -74.025085)),
                    Location(name: "Hoboken Cove Community Boathouse",
                             address: "Frank Sinatra Dr, Hoboken, NJ 07030",
                             image: UIImage(named: "boat")!,
                             keywords: [LocationKeywords.interesting],
                             description: "The Hoboken Cove Community Boathouse is a 100% volunteer based, 501(c)(3) nonprofit organization whose mission is to provide free water sport programs and access to local waterways. Established 2004, Hoboken Boathouse operates in partnership with the City of Hoboken, New Jersey in serving more than 6,000 paddlers each year.",
                             coords: CLLocationCoordinate2D(latitude: 40.748393, longitude: -74.024005)),
                    Location(name: "Hoboken Fire Department Museum",
                             address: "213 Bloomfield St, Hoboken, NJ 07030",
                             image: UIImage(named: "fire")!,
                             keywords: [LocationKeywords.interesting],
                             description: "There’s something for everyone at the Hoboken Fire Department Museum. For kids, the star attraction at the former fire station at 213 Bloomfield St. is the shiny red Ahrens Fox fire engine, circa 1932; this “Cadillac” of fire trucks has been meticulously restored and occasionally stars in civic parades. For grownups, the Fire Department Museum is a treasure trove of fire gear and memorabilia documenting the evolution of tools and techniques used by Hoboken’s bravest in battling fires that spread quickly in a city of connected row houses, working piers and active factories. Some of the fiercest fires from the early 1900s were widely documented on postcards, the “instant messages” of the last century. One of the highlights for visitors of a certain age is the framed 1947 photo of fire captain Marty Sinatra posing on a fire truck with his son, who at the time was the most popular singer in the country.",
                             coords: CLLocationCoordinate2D(latitude: 40.739273, longitude: -74.030956)),
                    Location(name: "Hoboken City Hall",
                             address: "94 Washington St, Hoboken, NJ 07030",
                             image: UIImage(named: "cityhall")!,
                             keywords: [LocationKeywords.interesting],
                             description: "The Hoboken Historical Museum collects and displays artifacts in themed exhibitions on Hoboken history and offers educational programs, lectures, tours and hosts films and plays.",
                             coords: CLLocationCoordinate2D(latitude: 40.737241, longitude: -74.031359))]
        return temp
    }
    
    func createHistoricalLocationsArray() -> [Location] {
        var temp = [Location(name: "Civil War Memorial",
                      address: "Elysian Park at 11th and Hudson Street",
                      image: UIImage(named: "civilwar")!,
                      keywords: [LocationKeywords.historical],
                      description: "ERECTED BY THE CITIZENS OF HOBOKEN IN MEMORY OF THEIR FALLEN HEROES 1861-1865",
                      coords: CLLocationCoordinate2D(latitude: 40.748822, longitude: -74.025767)),
                    Location(name: "World War I Memorial",
                             address: "Elysian Park at 11th and Hudson Street",
                             image: UIImage(named: "ww1")!,
                             keywords: [LocationKeywords.historical],
                             description: "Soilders & Sailors Monument. Dedicated on May 30, 1922. Created by Charles Henry Niehaus. Located in Elysian Park.",
                             coords: CLLocationCoordinate2D(latitude: 40.768114, longitude: -74.016224)),
                    Location(name: "World War II Memorial",
                             address: "Elysian Park at 11th and Hudson Street",
                             image: UIImage(named: "ww2")!,
                             keywords: [LocationKeywords.historical],
                             description: "The Hoboken World War II Memorial, located adjacent to Frank Sinatra Park, was dedicated on November 8, 2008. The memorial, designed by Dean Marchetto architects, is set against the backdrop of the Manhattan skyline and features a small park and a bronze statue, created by Burns Brothers of Jersey City, of two soldiers supporting each other. Helmets sit on top of 21 rifles behind the statue, and a plaque bears the names of the 159 Hoboken soldiers who gave their lives in World War II. The memorial, which cost $750,000, was funded by a combination of city and state money. Then-Senate Majority leader Bernard Kenny, who lives in Hoboken, secured a $250,000 grant for the memorial.",
                             coords: CLLocationCoordinate2D(latitude: 40.74483, longitude: -74.022959)),
                    Location(name: "9-11 Memorial",
                             address: "Hoboken, NJ 07030",
                             image: UIImage(named: "911")!,
                             keywords: [LocationKeywords.historical],
                             description: "The memorial is aligned in the direction of the World Trade Center site and includes a steel beam base with a glass panel for each of the 56 Hoboken residents lost on that day. Each panel is engraved with a name and is illuminated at night. The memorial is located within the grove of ginkgo trees which are also aligned with the World Trade Center that were planted in 2002 as a living memorial. The perimeter of the grove includes steel plates on the ground engraved with quotes from those who were there on that fateful day.",
                             coords: CLLocationCoordinate2D(latitude: 40.74399, longitude: -74.03236))]
        return temp
    }
    
    func createFoodLocationsArray() -> [Location] {
        var temp = [Location(name: "Pier 13",
                      address: "Pier 13, Hoboken Newport Walkway - Hudson River Waterfront Walkway",
                      image: UIImage(named: "pier13")!,
                      keywords: [LocationKeywords.food],
                      description: "Grab food from local food trucks! Enjoy music and other seasonal activities.",
                      coords: CLLocationCoordinate2D(latitude: 40.751751, longitude: -74.022038)),
                    Location(name: "Giorgio's",
                             address: "1112 Washington St, Hoboken, NJ 07030",
                             image: UIImage(named: "giorgio")!,
                             keywords: [LocationKeywords.food],
                             description: "Local fixture baking traditional Italian & French pastries, including cannoli, eclairs & cookies.",
                             coords: CLLocationCoordinate2D(latitude: 40.750344, longitude: -74.026826)),
                    Location(name: "Maxwell's Tavern",
                             address: "1039 Washington St, Hoboken, NJ 07030",
                             image: UIImage(named: "maxwell")!,
                             keywords: [LocationKeywords.food],
                             description: "Bustling watering hole joining live bands with a long beer list plus cocktails, pub grub & more.",
                             coords: CLLocationCoordinate2D(latitude: 40.749704, longitude: -74.027)),
                    Location(name: "Fiore's House of Quality Deli",
                             address: "414 Adams St #2693, Hoboken, NJ 07030",
                             image: UIImage(named: "fiore")!,
                             keywords: [LocationKeywords.food],
                             description: "Italian Deli products, Sandwiches, daily specials, Mozzarella, Mutz",
                             coords: CLLocationCoordinate2D(latitude: 40.742597, longitude: -74.036196))]
        
        return temp
    }
}
