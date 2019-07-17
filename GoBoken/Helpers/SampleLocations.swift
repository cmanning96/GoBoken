//
//  SampleLocations.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit

struct SampleLocations {
  
  static let allLocations = [
    Location(name: "Empire Coffee & Tea Co.", address: "338 Bloomfield Street", image: UIImage(named: "empire")!, keywords: ["coffee", "tea", "cafe"], description: "Empire Coffee & Tea Co. is a landmark neighborhood specialty shop offering the freshest and finest gourmet coffees by the pound, loose leaf & packaged teas, gift baskets, chocolates, cookies, mugs, teapots, coffee presses and other fun accessories. There is an extensive espresso bar offering any kind if coffee, tea or cocoa concoction you could dream up! And, of course, we make a darned spectacular regular cup of Joe! Alongside our outstanding drinks we offer biscotti, muffins, snacks & treats for the kids! We are also on the 'Mangia Hoboken Food Tour' with our neighbors The Cake Boss! Empire was also recently voted 'best coffee in the state of NJ' in an on line poll put out by Inside New Jersey Magazine and was given a proclamation at City Hall by the Hoboken City Council. And for you fabulous Cafe & Restaurant owners, we have a full service wholesale division for you coffee program needs!"),
    Location(name: "Anthony David's", address: "953 Bloomfield Street", image: UIImage(named: "anthony_davids")!, keywords: ["italian", "brunch"], description: "More than 15 years ago, Anthony David’s put hard-to-find epicurean items on the shelf of a cozy corner store in Hoboken, and nothing has been the same since. Now, in true trattoria style, Chef Anthony Pino serves all-day brunch 7 days a week, late afternoon Antipasto, and dinner every evening. Italian classics and new creations, made with seasonal, local ingredients, strong flavors and simple, honest presentation, are served in a relaxed, totally refreshed and expanded new setting. Join us!"),
    Location(name: "Karma Kafe", address: "505 Washington Street", image: UIImage(named: "karma_kafe")!, keywords: ["indian", "buffet"], description: "Karma Kafe - An Indian Bistro, is located at 505 Washington Street, in the heart of Hoboken, NJ. Our trend setting modern Indian restaurant opened its doors in 1999. Karma Kafe is deeply rooted in tradition, but designed for today's global citizen. Step into Karma Kafe and you will see brass temple bells suspended over our full service bar. Intricate wood carvings dress exposed brick walls. Our one of a kind inlaid enamel window frames tables, rest on light hardwood floors. Watching over all this is our 'Devi' or Goddess, a seven foot diameter gold leaf depiction of our logo, that adorns our ceiling."),
    Location(name: "Carlo's Bakery", address: "95 Washington Street", image: UIImage(named: "carlos")!, keywords: ["bakery"], description: "Carlo’s is a family owned bakery featured on the TLC hit show Cake Boss. Carlo’s, originally opened by Carlo Guastaffero in 1910, was acquired by Bartolo Valastro Sr. in 1964. Since the untimely passing of Bartolo Sr. in 1994, matriarch Mary Valastro and her children Grace, Maddalena, Mary, Lisa and master baker Bartolo Jr. “Buddy” Valastro have expanded the business with the help of their spouses."),
    Location(name: "La Isla", address: "104 Washington Street", image: UIImage(named: "la_isla")!, keywords: ["cuban"], description: "The original La Isla Restaurant at 104 Washington Street has been an institution in downtown Hoboken since 1970. Taken over by the Luis and Giner families in 1996 it has attained local cult status, serving “incredible Cuban food morning, day and night” with Sunday brunch “being a divine reason to skip church” according to Zagat. With Chef Omar Giner at the helm, we are committed to serving traditional Cuban food made from the freshest and most genuine ingredients, served in generous portions at affordable prices in a friendly and unpretentious neighborhood atmosphere."),
    Location(name: "Biergarten", address: "1422 Grand Street", image: UIImage(named: "bg")!, keywords: ["beer"], description: "An authentic Austro-Hungarian biergarten with some of the best dining in the region. Set in a turn-of-the-century bier hall with an adjoining, sunny biergarten, it's the perfect place to spend the day with good friends and good cheer."),
    Location(name: "House of 'Que", address: "340 Sinatra Drive", image: UIImage(named: "house_of_que")!, keywords: ["bbq"], description: "House Of ‘Que (HOQ) serves up authentic Austin-style barbecue amidst the most sought-after waterfront locations - all with sweeping views of the picturesque Manhattan skyline. The brainchild of award winning Texas Pitmaster Michael Rodriguez,  HOQ dishes up over 4,000 pounds of in-house smoked chicken, sausage, brisket, pulled pork and ribs weekly.  Each tender piece of meat is hand-seasoned with Pitmaster Rod HOQ’s complimentary entertainment showcasing Dueling Pianos, Live Bands, Trivia, Karaoke, Sports as well as Family Funday on the weekends…."),
    Location(name: "Amanda's", address: "908 Washington Street", image: UIImage(named: "amandas")!, keywords: ["italian"], description: "Amanda's has been delighting customers for over 20 years. Guests enter our elegantly restored brownstones and are warmly welcomed by an accommodating staff. Although geographically close to Manhattan and certainly as culinarily sophisticated, we're not slow to smile and truly aim to please each guest. Highly rated by the Zagat Guide for food, service and decor, we are proud to have been named on their short list of the state's Most Popular Restaurants. Our popularity stems from the talents of our CIA-trained chef, Rodney Petersen, our dedication to warm, gracious service and the comfortable elegance of our dining rooms. Amanda's is the natural choice for so many occasions: the romantic couple on a 'date to impress,' a family brunch on Sunday or the place to enjoy pre-theater Early Dinner at a price that is really too good to believe. Sophisticated wine lovers enjoy our monthly five-course wine dinners.")
  ]
  
  static func getLocations(withKeyword: String?) -> [Location] {
    guard let keyword = withKeyword else {
      return allLocations
    }
    return allLocations.filter({ (location) -> Bool in
      return location.keywords.contains(keyword)
    })
  }
  
  static func getAllKeywords() -> [String] {
    var keywords: [String] = []
    for loc in SampleLocations.allLocations {
      for key in loc.keywords {
        if !keywords.contains(key) {
          keywords.append(key)
        }
      }
    }
    return keywords
  }
  
}
