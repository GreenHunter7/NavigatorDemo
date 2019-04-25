//
//  NavigationCoordinator.swift
//  NavigatorDemo
//
//  Created by Mohamed Hussien on 17/04/2019.
//  Copyright © 2019 HNF. All rights reserved.
//

import Foundation
import UIKit

class NavigationCoordinator{
    
    static let shared = NavigationCoordinator()
    private let nvc = UINavigationController()
    private let sharedAppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var mainNavigator: MainNavigator!
    
    private init() {
        mainNavigator = MainNavigator(navigationController: nvc)
    }
}
