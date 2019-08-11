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
    var keywords: [LocationKeywords]!
    var description: String!
    var coordindates: CLLocationCoordinate2D!
    
    init(name: String, address: String, image: UIImage, keywords: [LocationKeywords], description: String, coords: CLLocationCoordinate2D) {
        self.name = name
        self.address = address + ", Hoboken, NJ 07030"
        self.image = image
        self.keywords = keywords
        self.description = description
        self.coordindates = coords
    }
    
    func getKeywordString() -> String {
        let keywordDict: [LocationKeywords:String] = [
            LocationKeywords.coffee: "Coffee",
            LocationKeywords.dining: "Dining",
            LocationKeywords.hotel: "Hotel",
            LocationKeywords.landmark: "Landmark"
        ]
        var string = ""
        for index in 0..<keywords.count - 1 {
            let key = keywords[index]
            guard let keyString = keywordDict[key] else {
                print("No keyword string has been assigned for one of the keywords for " + self.name)
                return ""
            }
            string += keyString + ", "
        }
        guard let lastWord = keywordDict[keywords[keywords.count - 1]] else {
            print("No keyword string has been assigned for one of the keywords for " + self.name)
            return ""
        }
        return string + lastWord
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
}
