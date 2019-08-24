//
//  LoginController.swift
//  MindfulWasteOfficial
//
//  Created by Alex Drewno on 8/23/19.
//  Copyright © 2019 Alex Drewno. All rights reserved.
//

import Foundation
import UIKit

class LoginController {
    
    typealias CompletionHandler = (Bool) -> ()
    static func loginAsGuest(completionHandler: (Bool) -> ()) {
        MindfulWasteUser.shared.userType = .guest
        completionHandler(true)
    }
}
