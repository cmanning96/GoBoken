//
//  CreateProfileController.swift
//  GoBoken
//
//  Created by GURPREET SINGH on 8/11/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import Foundation

import UIKit

class CreateProfileViewController: UIViewController {
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Age: UITextField!
    @IBOutlet weak var Gender: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func SaveProfile(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(Name.text, forKey: "Name")
        defaults.set(Age.text, forKey: "Age")
        defaults.set(Gender.selectedSegmentIndex, forKey: "Gender")
    }
}
