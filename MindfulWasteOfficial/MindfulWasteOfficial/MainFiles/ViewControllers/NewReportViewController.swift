//
//  NewReportViewController.swift
//  MindfulWasteOfficial
//
//  Created by Alex Drewno on 9/22/19.
//  Copyright © 2019 Alex Drewno. All rights reserved.
//

import Foundation
import UIKit
import SwipeMenuViewController

// MARK: - Class Properties
class NewReportViewController: MindfulWasteBaseViewController {
    
    var swipeMenuView: SwipeMenuView!
    @IBOutlet weak var containerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupMenuViewUI()
    }
}

// MARK: - UI Setup
extension NewReportViewController {
    func setupMenuViewUI() {

        swipeMenuView = SwipeMenuView(frame: CGRect(x: 0,
                                                    y: containerView.frame.maxY,
                                                    width: view.frame.width,
                                                    height: 100))
        
        var options = SwipeMenuViewOptions()
        options.tabView.style = .segmented
        options.tabView.itemView.font = options.tabView.itemView.font.withSize(12)
        //options.tabView.itemView.textColors = Constants.FOOD_COLORS
        
        
        swipeMenuView.reloadData(options: options, isOrientationChange: false)
        
        //swipeMenuView.center = CGPoint(x: view.center.x, y: view.frame.height/8)
        
        swipeMenuView.dataSource = self
        swipeMenuView.delegate = self
        
        self.view.addSubview(swipeMenuView)
    }
}

// MARK: - SwipeMenuViewDelegate
extension NewReportViewController: SwipeMenuViewDelegate {
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewWillSetupAt currentIndex: Int) {
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewDidSetupAt currentIndex: Int) {
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, willChangeIndexFrom fromIndex: Int, to toIndex: Int) {
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, didChangeIndexFrom fromIndex: Int, to toIndex: Int) {
    }
}

// MARK: - SwipeMenuViewDataSource
extension NewReportViewController: SwipeMenuViewDataSource {
    func numberOfPages(in swipeMenuView: SwipeMenuView) -> Int {
        return Constants.FOOD_CATEGORIES.count
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, titleForPageAt index: Int) -> String {
        return Constants.FOOD_CATEGORIES[index]
    }
    
    func swipeMenuView(_ swipeMenuView: SwipeMenuView, viewControllerForPageAt index: Int) -> UIViewController {
        return UIViewController()
    }
}
