//
//  MindfulWasteBaseViewController.swift
//  MindfulWasteOfficial
//
//  Created by Alex Drewno on 8/23/19.
//  Copyright © 2019 Alex Drewno. All rights reserved.
//

import Foundation
import UIKit
import FanMenu

class MindfulWasteBaseViewController: UIViewController {
    var fanMenuButton: FanMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFanMenuButton()
        
        self.view.backgroundColor = Constants.BACKGROUND_COLOR
    }
}

//MARK: - UI Setup
extension MindfulWasteBaseViewController {
    func setupUI() {
        
    }
    
    func setupFanMenuButton() {
        let fanMenuButtonX = self.view.frame.maxX
        let fanMenuButtonY = self.view.frame.maxY

        
        let fanMenuFrame = CGRect(
            x: fanMenuButtonX/2 - Constants.FAN_MENU_SIZE/2,
            y: fanMenuButtonY - Constants.FAN_MENU_SIZE/2 - 60,
            width: Constants.FAN_MENU_SIZE,
            height: Constants.FAN_MENU_SIZE
        )
        
        fanMenuButton = FanMenu.init(frame: fanMenuFrame)
        
        fanMenuButton.button = FanMenuButton(
            id: "menu",
            image: UIImage(named: "Menu"),
            color: .init(val: 0xF6871E)
        )
        
        fanMenuButton.backgroundColor = UIColor.clear
        fanMenuButton.menuBackground = .clear
        
        self.view.addSubview(fanMenuButton)
        setupFanMenuDetailButtons()
    }
    
    func setupFanMenuDetailButtons() {
        fanMenuButton.interval = (Double.pi + Double.pi/8, Double.pi*2 - Double.pi/8)
        
        fanMenuButton.items = [
            FanMenuButton(
                id: "report",
                image: "Report",
                color: .init(val: 0xF6871E)
            ),
            FanMenuButton(
                id: "plus",
                image: "Plus",
                color: .init(val: 0xFEB141)
            ),
            FanMenuButton(
                id: "settings",
                image: "Settings",
                color: .init(val: 0x8DC540)
            )
        ]
    }
    
}
