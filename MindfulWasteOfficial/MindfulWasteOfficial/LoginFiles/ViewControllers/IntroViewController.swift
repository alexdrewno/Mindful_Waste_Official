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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func guestLoginButtonPressed(_ sender: Any) {
        loginAsGuest()
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
