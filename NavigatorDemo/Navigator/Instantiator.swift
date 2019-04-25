//
//  Instantiator.swift
//  NavigatorDemo
//
//  Created by Mohamed Hussien on 17/04/2019.
//  Copyright © 2019 HNF. All rights reserved.
//

import Foundation
import UIKit

protocol Instantiator {
    static func InstantiateFormStoryBoard<T: UIViewController>(_ storyboard: UIStoryboard, vc: T) -> T?
}

extension Instantiator where Self: UIViewController{
    static func InstantiateFormStoryBoard<T: UIViewController>(_ storyboard: UIStoryboard, vc: T) -> T?{
        let identifier = String(describing: vc.self)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? T else{
            return nil
        }
        return viewController
    }
}
