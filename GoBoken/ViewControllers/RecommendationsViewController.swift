//
//  RecommendationsViewController.swift
//  GoBoken
//
//  Created by GURPREET SINGH on 8/16/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit

class RecommendationsViewController: UITableViewController {

    let RecommendationsListLbl = ["Interesting", "Historical", "Food"]
    let RecommendationsListImg = ["POI.jpg", "History.jpg", "Food.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RecommendationsListLbl.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RecommendationsTableViewCell
        cell.RecmdLbl.text = RecommendationsListLbl[indexPath.row]
        cell.RecmdImg.image = UIImage(named: RecommendationsListImg[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "tourView") as! TourViewController
        let defaults = UserDefaults.standard
        print(indexPath.row)
        let idx:Int? = indexPath.row
        defaults.set(idx, forKey: "RecommendationsListLblIdx")
        present(vc, animated: true)
    }
}
