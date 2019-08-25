//
//  SampleLocations.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit
import CoreLocation

struct SampleLocations {
    
    static let allLocations = [
        Location(name: "Empire Coffee & Tea Co.",
                 address: "338 Bloomfield Street",
                 image: UIImage(named: "empire")!,
                 keywords: [LocationKeywords.coffee],
                 description: "Empire Coffee & Tea Co. is a landmark neighborhood specialty shop offering the freshest and finest gourmet coffees by the pound, loose leaf & packaged teas, gift baskets, chocolates, cookies, mugs, teapots, coffee presses and other fun accessories. There is an extensive espresso bar offering any kind if coffee, tea or cocoa concoction you could dream up! And, of course, we make a darned spectacular regular cup of Joe! Alongside our outstanding drinks we offer biscotti, muffins, snacks & treats for the kids! We are also on the 'Mangia Hoboken Food Tour' with our neighbors The Cake Boss! Empire was also recently voted 'best coffee in the state of NJ' in an on line poll put out by Inside New Jersey Magazine and was given a proclamation at City Hall by the Hoboken City Council. And for you fabulous Cafe & Restaurant owners, we have a full service wholesale division for you coffee program needs!",
                 coords: CLLocationCoordinate2D(latitude: 40.74136800, longitude: -74.03081500)),
        Location(name: "Anthony David's",
                 address: "953 Bloomfield Street",
                 image: UIImage(named: "anthony_davids")!,
                 keywords: [LocationKeywords.dining],
                 description: "More than 15 years ago, Anthony David’s put hard-to-find epicurean items on the shelf of a cozy corner store in Hoboken, and nothing has been the same since. Now, in true trattoria style, Chef Anthony Pino serves all-day brunch 7 days a week, late afternoon Antipasto, and dinner every evening. Italian classics and new creations, made with seasonal, local ingredients, strong flavors and simple, honest presentation, are served in a relaxed, totally refreshed and expanded new setting. Join us!",
                 coords: CLLocationCoordinate2D(latitude: 40.74857500, longitude: -74.02814390)),
        Location(name: "Karma Kafe",
                 address: "505 Washington Street",
                 image: UIImage(named: "karma_kafe")!,
                 keywords: [LocationKeywords.dining],
                 description: "Karma Kafe - An Indian Bistro, is located at 505 Washington Street, in the heart of Hoboken, NJ. Our trend setting modern Indian restaurant opened its doors in 1999. Karma Kafe is deeply rooted in tradition, but designed for today's global citizen. Step into Karma Kafe and you will see brass temple bells suspended over our full service bar. Intricate wood carvings dress exposed brick walls. Our one of a kind inlaid enamel window frames tables, rest on light hardwood floors. Watching over all this is our 'Devi' or Goddess, a seven foot diameter gold leaf depiction of our logo, that adorns our ceiling.",
                 coords: CLLocationCoordinate2D(latitude: 40.74236700, longitude: -74.02905500)),
        Location(name: "Carlo's Bakery",
                 address: "95 Washington Street",
                 image: UIImage(named: "carlos")!,
                 keywords: [LocationKeywords.dining],
                 description: "Carlo’s is a family owned bakery featured on the TLC hit show Cake Boss. Carlo’s, originally opened by Carlo Guastaffero in 1910, was acquired by Bartolo Valastro Sr. in 1964. Since the untimely passing of Bartolo Sr. in 1994, matriarch Mary Valastro and her children Grace, Maddalena, Mary, Lisa and master baker Bartolo Jr. “Buddy” Valastro have expanded the business with the help of their spouses.",
                 coords: CLLocationCoordinate2D(latitude: 40.73719260, longitude: -74.03073100)),
        Location(name: "La Isla",
                 address: "104 Washington Street",
                 image: UIImage(named: "la_isla")!,
                 keywords: [LocationKeywords.dining],
                 description: "The original La Isla Restaurant at 104 Washington Street has been an institution in downtown Hoboken since 1970. Taken over by the Luis and Giner families in 1996 it has attained local cult status, serving “incredible Cuban food morning, day and night” with Sunday brunch “being a divine reason to skip church” according to Zagat. With Chef Omar Giner at the helm, we are committed to serving traditional Cuban food made from the freshest and most genuine ingredients, served in generous portions at affordable prices in a friendly and unpretentious neighborhood atmosphere.",
                 coords: CLLocationCoordinate2D(latitude: 40.74857500, longitude: -74.03108500)),
        Location(name: "Biergarten",
                 address: "1422 Grand Street",
                 image: UIImage(named: "bg")!,
                 keywords: [LocationKeywords.dining],
                 description: "An authentic Austro-Hungarian biergarten with some of the best dining in the region. Set in a turn-of-the-century bier hall with an adjoining, sunny biergarten, it's the perfect place to spend the day with good friends and good cheer.",
                 coords: CLLocationCoordinate2D(latitude: 40.75529000, longitude: -74.03151300)),
        Location(name: "Amanda's",
                 address: "908 Washington Street",
                 image: UIImage(named: "amandas")!,
                 keywords: [LocationKeywords.dining],
                 description: "Amanda's has been delighting customers for over 20 years. Guests enter our elegantly restored brownstones and are warmly welcomed by an accommodating staff. Although geographically close to Manhattan and certainly as culinarily sophisticated, we're not slow to smile and truly aim to please each guest. Highly rated by the Zagat Guide for food, service and decor, we are proud to have been named on their short list of the state's Most Popular Restaurants. Our popularity stems from the talents of our CIA-trained chef, Rodney Petersen, our dedication to warm, gracious service and the comfortable elegance of our dining rooms. Amanda's is the natural choice for so many occasions: the romantic couple on a 'date to impress,' a family brunch on Sunday or the place to enjoy pre-theater Early Dinner at a price that is really too good to believe. Sophisticated wine lovers enjoy our monthly five-course wine dinners.",
                 coords: CLLocationCoordinate2D(latitude: 40.74762600, longitude: -74.02812000)),
        Location(name: "Hoboken Historical Museum",
                 address: "1301 Hudson Street",
                 image: UIImage(named: "museum")!,
                 keywords: [LocationKeywords.landmark],
                 description: "The Hoboken Historical Museum welcomes visitors 6 days a week, showcasing Hoboken’s history, diverse culture, architecture and landmarks with exhibits, guest speakers and educational programming in the former Bethlehem Steel Machine Shop at 1301 Hudson St. Admission is just $5; free for children and Museum members.",
                 coords: CLLocationCoordinate2D(latitude: 40.75228931, longitude: -74.02501265)),
        Location(name: "Stevens Institute of Technology",
                 address: "1 Castle Point Terrace",
                 image: UIImage(named: "stevens")!,
                 keywords: [LocationKeywords.landmark],
                 description: "Stevens Institute of Technology is a private, coeducational research university in Hoboken, New Jersey. Incorporated in 1870, it is one of the oldest technological universities in the United States and was the first college in America solely dedicated to mechanical engineering.[7] The campus encompasses Castle Point, the highest point in Hoboken, and several other buildings around the city.",
                 coords: CLLocationCoordinate2D(latitude: 40.74501100, longitude: -74.02383790)),
        Location(name: "Church Square Park",
                 address: "Corner of 4th and Garden",
                 image: UIImage(named: "csp")!,
                 keywords: [LocationKeywords.landmark],
                 description: "Issa park",
                 coords: CLLocationCoordinate2D(latitude: 40.74222500, longitude: -74.03229200)),
        Location(name: "The W Hotel",
                 address: "225 River Street",
                 image: UIImage(named: "w")!,
                 keywords: [LocationKeywords.hotel],
                 description: "Perched on the waterfront, right across the river from Manhattan, W Hoboken is perfectly placed for both work and play. You'll find our hotel in the heart of the Mile Square City, steps from great dining, exhilarating nightlife and noteworthy cultural attractions. Stretch out in gorgeously designed rooms and suites, many of which showcase grand NYC views.",
                 coords: CLLocationCoordinate2D(latitude: 40.73915600, longitude: -74.02761400)),
        Location(name: "Blueston Lane",
                 address: "409 Washington Street",
                 image: UIImage(named: "bluestone")!,
                 keywords: [LocationKeywords.coffee],
                 description: "Bluestone Lane is an Australian-inspired coffee shop, cafés & lifestyle brand committed to providing a genuine daily escape for all our locals. We offer premium coffee and healthy and delicious eats through an always welcoming experience that embraces our ‘Aussie’ approach to life.",
                 coords: CLLocationCoordinate2D(latitude: 40.74159100, longitude: -74.02932190)),
        Location(name: "Civil War Memorial",
                 address: "Elysian Park at 11th and Hudson Street",
                 image: UIImage(named: "civilwar")!,
                 keywords: [LocationKeywords.landmark],
                 description: "ERECTED BY THE CITIZENS OF HOBOKEN IN MEMORY OF THEIR FALLEN HEROES 1861-1865",
                 coords: CLLocationCoordinate2D(latitude: 40.748822, longitude: -74.025767)),
        Location(name: "World War I Memorial",
                 address: "Elysian Park at 11th and Hudson Street",
                 image: UIImage(named: "ww1")!,
                 keywords: [LocationKeywords.landmark],
                 description: "Soilders & Sailors Monument. Dedicated on May 30, 1922. Created by Charles Henry Niehaus. Located in Elysian Park.",
                 coords: CLLocationCoordinate2D(latitude: 40.768114, longitude: -74.016224)),
        Location(name: "World War II Memorial",
                 address: "Elysian Park at 11th and Hudson Street",
                 image: UIImage(named: "ww2")!,
                 keywords: [LocationKeywords.landmark],
                 description: "The Hoboken World War II Memorial, located adjacent to Frank Sinatra Park, was dedicated on November 8, 2008. The memorial, designed by Dean Marchetto architects, is set against the backdrop of the Manhattan skyline and features a small park and a bronze statue, created by Burns Brothers of Jersey City, of two soldiers supporting each other. Helmets sit on top of 21 rifles behind the statue, and a plaque bears the names of the 159 Hoboken soldiers who gave their lives in World War II. The memorial, which cost $750,000, was funded by a combination of city and state money. Then-Senate Majority leader Bernard Kenny, who lives in Hoboken, secured a $250,000 grant for the memorial.",
                 coords: CLLocationCoordinate2D(latitude: 40.74483, longitude: -74.022959)),
        Location(name: "9-11 Memorial",
                 address: "Hoboken, NJ 07030",
                 image: UIImage(named: "911")!,
                 keywords: [LocationKeywords.landmark],
                 description: "The memorial is aligned in the direction of the World Trade Center site and includes a steel beam base with a glass panel for each of the 56 Hoboken residents lost on that day. Each panel is engraved with a name and is illuminated at night. The memorial is located within the grove of ginkgo trees which are also aligned with the World Trade Center that were planted in 2002 as a living memorial. The perimeter of the grove includes steel plates on the ground engraved with quotes from those who were there on that fateful day.",
                 coords: CLLocationCoordinate2D(latitude: 40.74399, longitude: -74.03236)),
        Location(name: "Hoboken Historical Museum",
                 address: "1301 Hudson St, Hoboken, New Jersey 07030",
                 image: UIImage(named: "historical_museum")!,
                 keywords: [LocationKeywords.landmark],
                 description: "The Hoboken Historical Museum collects and displays artifacts in themed exhibitions on Hoboken history and offers educational programs, lectures, tours and hosts films and plays.",
                 coords: CLLocationCoordinate2D(latitude: 40.752223, longitude: -74.025085)),
        Location(name: "Hoboken Cove Community Boathouse",
                 address: "Frank Sinatra Dr, Hoboken, NJ 07030",
                 image: UIImage(named: "boat")!,
                 keywords: [LocationKeywords.landmark],
                 description: "The Hoboken Cove Community Boathouse is a 100% volunteer based, 501(c)(3) nonprofit organization whose mission is to provide free water sport programs and access to local waterways. Established 2004, Hoboken Boathouse operates in partnership with the City of Hoboken, New Jersey in serving more than 6,000 paddlers each year.",
                 coords: CLLocationCoordinate2D(latitude: 40.748393, longitude: -74.024005)),
        Location(name: "Hoboken Fire Department Museum",
                 address: "213 Bloomfield St, Hoboken, NJ 07030",
                 image: UIImage(named: "fire")!,
                 keywords: [LocationKeywords.landmark],
                 description: "There’s something for everyone at the Hoboken Fire Department Museum. For kids, the star attraction at the former fire station at 213 Bloomfield St. is the shiny red Ahrens Fox fire engine, circa 1932; this “Cadillac” of fire trucks has been meticulously restored and occasionally stars in civic parades. For grownups, the Fire Department Museum is a treasure trove of fire gear and memorabilia documenting the evolution of tools and techniques used by Hoboken’s bravest in battling fires that spread quickly in a city of connected row houses, working piers and active factories. Some of the fiercest fires from the early 1900s were widely documented on postcards, the “instant messages” of the last century. One of the highlights for visitors of a certain age is the framed 1947 photo of fire captain Marty Sinatra posing on a fire truck with his son, who at the time was the most popular singer in the country.",
                 coords: CLLocationCoordinate2D(latitude: 40.739273, longitude: -74.030956)),
        Location(name: "Hoboken City Hall",
                 address: "94 Washington St, Hoboken, NJ 07030",
                 image: UIImage(named: "cityhall")!,
                 keywords: [LocationKeywords.landmark],
                 description: "The Hoboken Historical Museum collects and displays artifacts in themed exhibitions on Hoboken history and offers educational programs, lectures, tours and hosts films and plays.",
                 coords: CLLocationCoordinate2D(latitude: 40.737241, longitude: -74.031359)),
        Location(name: "Pier 13",
                 address: "Pier 13, Hoboken Newport Walkway - Hudson River Waterfront Walkway",
                 image: UIImage(named: "pier13")!,
                 keywords: [LocationKeywords.dining],
                 description: "Grab food from local food trucks! Enjoy music and other seasonal activities.",
                 coords: CLLocationCoordinate2D(latitude: 40.751751, longitude: -74.022038)),
        Location(name: "Giorgio's",
                 address: "1112 Washington St, Hoboken, NJ 07030",
                 image: UIImage(named: "giorgio")!,
                 keywords: [LocationKeywords.dining],
                 description: "Local fixture baking traditional Italian & French pastries, including cannoli, eclairs & cookies.",
                 coords: CLLocationCoordinate2D(latitude: 40.750344, longitude: -74.026826)),
        Location(name: "Maxwell's Tavern",
                 address: "1039 Washington St, Hoboken, NJ 07030",
                 image: UIImage(named: "maxwell")!,
                 keywords: [LocationKeywords.dining],
                 description: "Bustling watering hole joining live bands with a long beer list plus cocktails, pub grub & more.",
                 coords: CLLocationCoordinate2D(latitude: 40.749704, longitude: -74.027)),
        Location(name: "Fiore's House of Quality Deli",
                 address: "414 Adams St #2693, Hoboken, NJ 07030",
                 image: UIImage(named: "fiore")!,
                 keywords: [LocationKeywords.dining],
                 description: "Italian Deli products, Sandwiches, daily specials, Mozzarella, Mutz",
                 coords: CLLocationCoordinate2D(latitude: 40.742597, longitude: -74.036196))
    ]
    
    static func getLocationsThatMatchUserPreferences() -> [Location] {
        let userLocation = CLLocation(latitude: 40.746, longitude: -74.030)
        return allLocations.filter({ (location) -> Bool in
            let intersectionOfKeywords = UserFilterPreferences.chosenKeywords.filter(location.keywords.contains)
            let keywordMatch = !intersectionOfKeywords.isEmpty
            let distanceInMeters = CLLocation(latitude: location.coordindates.latitude, longitude: location.coordindates.longitude).distance(from: userLocation)
            let distanceInMiles = metersToDistance(meters: Float(distanceInMeters))
            let belowMaximumDistance = Float(distanceInMiles) < UserFilterPreferences.maximumDistance
            return belowMaximumDistance && keywordMatch
        })
    }
    
    static private func metersToDistance(meters: Float) -> Float {
        return meters / 1609.344
    }
    
    static func getSearchResults(searchTxt: String) -> [Location] {
        return allLocations.filter({ (location) -> Bool in
            return location.name.contains(searchTxt) || location.description.contains(searchTxt)
        })
    }
}
