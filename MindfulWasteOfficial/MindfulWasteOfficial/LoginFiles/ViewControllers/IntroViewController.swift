//
//  IntroViewController.swift
//  MindfulWasteOfficial
//
//  Created by Alex Drewno on 8/23/19.
//  Copyright © 2019 Alex Drewno. All rights reserved.
//

import Foundation
import UIKit

//MARK: - Class Properties
class IntroViewController: MindfulWasteBaseViewController {
    @IBOutlet var loginButtons: [UIButton]!
    @IBOutlet weak var areYouLabel: UILabel!
    @IBOutlet var accentViews: [UIView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setupUI()
    }
    
    @IBAction func guestLoginButtonPressed(_ sender: Any) {
        loginAsGuest()
    }
    
}

//MARK: - UI
extension IntroViewController {
    func setupUI() {
        areYouLabel.textColor = Constants.TEXT_COLOR
        
        for loginButton in loginButtons {
            loginButton.setTitleColor(Constants.TEXT_COLOR, for: .normal)
        }
        
        for accentView in accentViews {
            accentView.backgroundColor = Constants.TEXT_COLOR
        }
    }
}

//MARK: - Actions
extension IntroViewController {
    func loginAsGuest() {
        LoginController.loginAsGuest { (success) in
            if success {
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let homeVC = mainStoryboard.instantiateViewController(withIdentifier: "homeViewController")
                present(homeVC, animated: true, completion: nil)
            } else {
                print("Error logging in as guest")
            }
        }
    }
}
