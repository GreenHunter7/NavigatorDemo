//
//  BaseViewController.swift
//  NavigatorDemo
//
//  Created by Mohamed Hussien on 17/04/2019.
//  Copyright © 2019 HNF. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
extension BaseViewController: Instantiator{
    static func InstantiateFormStoryBoard(_ storyboard: UIStoryboard) -> BaseViewController {
        let identifire = String(describing: self.self)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: identifire) as? BaseViewController else{
            return BaseViewController()
        }
        return viewController
    }
}
