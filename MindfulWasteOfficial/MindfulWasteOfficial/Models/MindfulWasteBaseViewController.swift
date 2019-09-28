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
import SCLAlertView

enum MindfulWasteState {
    case DetailReport
    case AddReport
    case Settings
}

class MindfulWasteBaseViewController: UIViewController {
    var fanMenuButton: FanMenu!
    var state: MindfulWasteState = .DetailReport
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        self.view.backgroundColor = Constants.BACKGROUND_COLOR
    }
}

//MARK: - UI Setup
extension MindfulWasteBaseViewController {
    func setupUI() {
        setupFanMenuButton()
    }

    func showNewReportView() {
        let alertView = SCLAlertView()
        
        alertView.addButton("Create Report") {
            self.showNewReportVC()
        }
        
        alertView.showInfo(
            "New Report",
            subTitle: "Create a new report.",
            closeButtonTitle: "Cancel",
            timeout: nil,
            colorStyle: UInt(Constants.YELLOW_ORANGE_COLOR_HEX),
            colorTextButton: 0xFFFFFF,
            circleIconImage: UIImage(named: "Plus"),
            animationStyle: .bottomToTop
        )
        
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "MM/dd/yyyy"
        let formattedDate = format.string(from: date)
        
        let reportNameTextField = alertView.addTextField("Report Name")
        let dateTextField = alertView.addTextField(formattedDate)
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
        
        setCurrentStateButtonColor()
        
        fanMenuButton.backgroundColor = UIColor.clear
        fanMenuButton.menuBackground = .clear
        
        self.view.addSubview(fanMenuButton)
        setupFanMenuDetailButtons()
    }
    
    func setCurrentStateButtonColor() {
        switch state {
        case .DetailReport:
            setMenuButtonColor(hexColor: Constants.ORANGE_COLOR_HEX)
        case .AddReport:
            setMenuButtonColor(hexColor: Constants.YELLOW_ORANGE_COLOR_HEX)
        case .Settings:
            setMenuButtonColor(hexColor: Constants.GREEN_COLOR_HEX)
        default:
            setMenuButtonColor(hexColor: Constants.ORANGE_COLOR_HEX)
        }
    }
    
    func setupFanMenuDetailButtons() {
        fanMenuButton.interval = (Double.pi + Double.pi/8, Double.pi*2 - Double.pi/8)
        
        fanMenuButton.items = [
            FanMenuButton(
                id: "report",
                image: "Report",
                color: .init(val: Constants.ORANGE_COLOR_HEX)
            ),
            FanMenuButton(
                id: "plus",
                image: "Plus",
                color: .init(val: Constants.YELLOW_ORANGE_COLOR_HEX)
            ),
            FanMenuButton(
                id: "settings",
                image: "Settings",
                color: .init(val: Constants.GREEN_COLOR_HEX)
            )
        ]
        
        setupFanMenuDetailButtonActions()
    }
    
    func setMenuButtonColor(hexColor: Int) {
        fanMenuButton.button = FanMenuButton(
            id: "menu",
            image: UIImage(named: "Menu"),
            color: .init(val: hexColor)
        )
    }
}

//MARK: - Actions
extension MindfulWasteBaseViewController {
    
    func setupFanMenuDetailButtonActions() {
        fanMenuButton.onItemDidClick = { button in
            self.handleMenuButtonPress(id: button.id)
        }
    }
    
    func handleMenuButtonPress(id: String) {
        switch id {
        case "menu":
            print("Menu button pressed")
        case "report":
            setMenuButtonColor(hexColor: Constants.ORANGE_COLOR_HEX)
        case "plus":
            setMenuButtonColor(hexColor: Constants.YELLOW_ORANGE_COLOR_HEX)
            showNewReportView()
        case "settings":
            setMenuButtonColor(hexColor: Constants.GREEN_COLOR_HEX)
        default:
            print("Something weird happened in menu button press...")
        }
    }
    
    func showNewReportVC() {
        let reportVC = self.storyboard?.instantiateViewController(withIdentifier: "addReportVC") as! NewReportViewController
        reportVC.state = .AddReport
        reportVC.modalTransitionStyle = .crossDissolve
        self.present(reportVC, animated: true)
    }
}
