//
//  FilterViewController.swift
//  GoBoken
//
//  Created by Conor Manning on 7/17/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
  
  @IBOutlet private var distanceLabel: UILabel!
  @IBOutlet private var distanceSlider: UISlider!
  @IBOutlet private var coffeeToggle: ToggleButton!
  @IBOutlet private var diningToggle: ToggleButton!
  @IBOutlet private var hotelToggle: ToggleButton!
  @IBOutlet private var landmarkToggle: ToggleButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupSlider()
    indicateKeywordSelection()
  }
  
  @IBAction func saveButtonTapped(_ sender: UIButton) -> Void {
    UserFilterPreferences.chosenKeywords = getChosenKeywords()
    UserFilterPreferences.maximumDistance = getRoundedSliderValue()
    navigationController?.popViewController(animated: true)
  }
  
  private func indicateKeywordSelection() -> Void {
    let keywordButtonDict: [LocationKeywords : ToggleButton] = [
      LocationKeywords.coffee : coffeeToggle,
      LocationKeywords.dining : diningToggle,
      LocationKeywords.hotel : hotelToggle,
      LocationKeywords.landmark : landmarkToggle
    ]
    for keyword in LocationKeywords.allCases {
      guard let button = keywordButtonDict[keyword] else {
        print("No button for one of the keywords")
        continue
      }
      if UserFilterPreferences.chosenKeywords.contains(keyword) {
        button.setToOn()
      } else {
        button.setToOff()
      }
    }
  }
  
  private func getChosenKeywords() -> [LocationKeywords] {
    var keywords: [LocationKeywords] = []
    let buttonKeywordDict: [ToggleButton : LocationKeywords] = [
      coffeeToggle : LocationKeywords.coffee,
      diningToggle : LocationKeywords.dining,
      hotelToggle : LocationKeywords.hotel,
      landmarkToggle : LocationKeywords.landmark
    ]
    for button in [coffeeToggle, diningToggle, hotelToggle, landmarkToggle] {
      if button!.isOn {
        keywords.append(buttonKeywordDict[button!]!)
      }
    }
    return keywords
  }
  
  private func setupSlider() -> Void {
    distanceSlider.maximumValue = 2.0
    distanceSlider.minimumValue = 0.1
    distanceSlider.isContinuous = true
    distanceSlider.addTarget(self, action: #selector(setSliderLabelValue), for: .valueChanged)
    distanceSlider.setValue(UserFilterPreferences.maximumDistance, animated: false)
    setSliderLabelValue()
  }
  
  @objc private func setSliderLabelValue() -> Void {
    let roundedVal = getRoundedSliderValue()
    distanceLabel.text = String(describing: roundedVal) + (roundedVal == 1.0 ? " mile" : " miles")
  }
  
  private func getRoundedSliderValue() -> Float {
    let val = distanceSlider.value
    let roundedVal = round(10.0 * val) / 10.0
    return roundedVal
  }
  
}
