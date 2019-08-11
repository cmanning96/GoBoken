//
//  ToggleButton.swift
//  GoBoken
//
//  Created by Conor Manning on 7/17/19.
//  Copyright © 2019 GoBoken. All rights reserved.
//

import UIKit

class ToggleButton: UIButton {
    
    var isOn: Bool!
    
    var onBackgroundColor = UIColor.blue
    var onTextColor = UIColor.white
    var offBackgroundColor = UIColor.white
    var offTextColor = UIColor.blue
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        addBorder()
        isOn = true
        backgroundColor = onBackgroundColor
        titleLabel?.textColor = onTextColor
    }
    
    @objc private func handleTap() -> Void {
        if isOn {
            setToOff()
        } else {
            setToOn()
        }
    }
    
    func setToOn() -> Void {
        isOn = true
        self.backgroundColor = onBackgroundColor
        self.titleLabel?.textColor = onTextColor
    }
    
    func setToOff() -> Void {
        isOn = false
        self.backgroundColor = offBackgroundColor
        self.titleLabel?.textColor = offTextColor
    }
    
    private func addBorder() -> Void {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.borderWidth = 2.0
        self.layer.borderColor = onBackgroundColor.cgColor
    }
    
}
