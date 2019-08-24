//
//  UpdateProfileController.swift
//  GoBoken
//
//  Created by GURPREET SINGH on 8/23/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import Foundation

import UIKit

class UpdateProfileController: UIViewController {

    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Age: UITextField!
    @IBOutlet weak var Gender: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        let NameStr = defaults.string(forKey: "Name")
        let AgeStr = defaults.string(forKey: "Age")
        let GenderField = defaults.string(forKey: "Gender")
        
        Name.text = NameStr
        Age.text = AgeStr
        if (GenderField == "0") {
            Gender.selectedSegmentIndex = 0
        } else {
            Gender.selectedSegmentIndex = 1
        }
    }
    
    @IBAction func UpdateButtonClicked(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(Name.text, forKey: "Name")
        defaults.set(Age.text, forKey: "Age")
        defaults.set(Gender.selectedSegmentIndex, forKey: "Gender")
        _ = navigationController?.popViewController(animated: true)
    }
}
