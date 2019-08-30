//
//  HomeViewController.swift
//  MindfulWasteOfficial
//
//  Created by Alex Drewno on 8/23/19.
//  Copyright © 2019 Alex Drewno. All rights reserved.
//

import Foundation
import UIKit

//MARK: - HomeViewController Properties
class HomeViewController: MindfulWasteBaseViewController {
    @IBOutlet weak var volunteerLabel: UILabel!
    @IBOutlet weak var newReportLabel: UILabel!
    @IBOutlet weak var completedReportButton: UIButton!
    @IBOutlet weak var editReportsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

//MARK: - UI Setup
extension HomeViewController {
    func setupUI() {
        volunteerLabel.textColor = Constants.TEXT_COLOR
        newReportLabel.textColor = Constants.TEXT_COLOR
        completedReportButton.setTitleColor(Constants.TEXT_COLOR, for: .normal)
        editReportsButton.setTitleColor(Constants.TEXT_COLOR, for: .normal)
    }
}
