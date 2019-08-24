//
//  MindfulWasteUser.swift
//  MindfulWasteOfficial
//
//  Created by Alex Drewno on 8/23/19.
//  Copyright © 2019 Alex Drewno. All rights reserved.
//

import Foundation

enum TypeOfUser {
    case admin
    case volunteer
    case guest
    case none
}

class MindfulWasteUser {
    static let shared = MindfulWasteUser()
    
    var userType: TypeOfUser = .none
    var dateLoggedIn: NSDate? 
}
