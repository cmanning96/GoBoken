//
//  ViewController.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
  
  var displayedLocations: [Location]!

  override func viewDidLoad() {
    super.viewDidLoad()
    displayedLocations = SampleLocations.getLocations(withKeyword: nil)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return displayedLocations.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let location = displayedLocations[indexPath.row]
    let cell = tableView.dequeueReusableCell(withIdentifier: "LocationViewCell") as! LocationTableViewCell
    cell.setCell(location: location)
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let location = displayedLocations[indexPath.row]
    let vc = storyboard?.instantiateViewController(withIdentifier: "locationDisplay") as! LocationViewController
    vc.location = location
    present(vc, animated: true)
  }

}

