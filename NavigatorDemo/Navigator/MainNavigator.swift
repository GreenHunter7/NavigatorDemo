//
//  MainNavigator.swift
//  NavigatorDemo
//
//  Created by Mohamed Hussien on 17/04/2019.
//  Copyright © 2019 HNF. All rights reserved.
//

import Foundation
import UIKit

class MainNavigator{
    
    private weak var navigationController: UINavigationController!
    
    private let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
}

extension MainNavigator: Navigator{
    
    enum Destination {
        case viewController
        case secondeViewController(_ name: String)
    }
    
    func navigate(To destination: Destination) {
        let vc = makeViewController(for: destination)
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func present(_ destination: Destination, completion: @escaping (() -> Void)) {
        let vc = makeViewController(for: destination)
        self.navigationController.present(vc, animated: true) {
            completion()
        }
    }
    
    private func makeViewController(for destination: Destination)-> UIViewController {
        switch destination {
        case .viewController:
            let vc = ViewController.InstantiateFormStoryBoard(storyboard)
            return vc
        case .secondeViewController(let name):
            let vc = SecondeViewController.InstantiateFormStoryBoard(storyboard) as? SecondeViewController
            vc?.name = name
            return vc!
        }
    }
    
}
