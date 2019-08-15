//
//  ViewController.swift
//  GoBoken
//
//  Created by Conor Manning on 7/15/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UISearchBarDelegate {
    
    var displayedLocations: [Location]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let Search = defaults.string(forKey: "Search")
        if Search != nil {
            setSearchResults(searchTxt: Search!)
        } else {
            setTableData()
        }
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
    
    private func setTableData() -> Void {
        displayedLocations = SampleLocations.getLocationsThatMatchUserPreferences()
        tableView.reloadData()
    }
    
    func setSearchResults(searchTxt: String) -> Void {
        displayedLocations = SampleLocations.getSearchResults(searchTxt: searchTxt)
        tableView.reloadData()
    }
    
    @IBAction func SearchTableClicked(_ sender: Any) {
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
        setTableData()
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
        
        let searchText = String(searchBar.text!)
        let defaults = UserDefaults.standard
        defaults.set(searchText, forKey: "Search")
        
        setSearchResults(searchTxt: searchText)
        
        activityIndicator.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
    }
}

