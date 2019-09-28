//
//  Constants.swift
//  MindfulWasteOfficial
//
//  Created by Alex Drewno on 8/23/19.
//  Copyright © 2019 Alex Drewno. All rights reserved.
//

import Foundation
import UIKit

class Constants {
    
    // Colors
    static var BACKGROUND_COLOR = UIColor(red: 253/255, green: 250/255, blue: 245/255, alpha: 1)
    static var RED_COLOR = UIColor(red: 0.9765, green: 0.251, blue: 0.2667, alpha: 1.0) /* #f94044 */
    static var ORANGE_COLOR_HEX = 0xF6871E
    static var ORANGE_COLOR = UIColor(red: 0.96, green: 0.53, blue: 0.12, alpha:1.0)
    static var YELLOW_ORANGE_COLOR_HEX = 0xFEB141
    static var YELLOW_ORANGE_COLOR = UIColor(red: 1.00, green: 0.69, blue: 0.25, alpha: 1.0)
    static var GREEN_COLOR_HEX = 0x8DC540
    static var GREEN_COLOR = UIColor(red: 0.03, green: 0.86, blue: 0.33, alpha: 1.0)
    static var BLUE_COLOR = UIColor(red: 0.3922, green: 0.702, blue: 0.9569, alpha: 1.0) /* #64b3f4 */

    
    
    // Fonts
    static var TEXT_COLOR = UIColor(red: 60/255, green: 179/255, blue: 113/255, alpha: 1)
    static var FAN_MENU_SIZE: CGFloat = 250
    
    // Data
    static var FOOD_CATEGORIES = ["Fruit", "Vegetables", "Dry Goods", "Dairy", "Misc."]
    static var FOOD_COLORS: [UIColor] = [Constants.RED_COLOR, Constants.GREEN_COLOR, Constants.YELLOW_ORANGE_COLOR, Constants.BLUE_COLOR, .lightGray]
}

