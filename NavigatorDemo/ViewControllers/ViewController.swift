//
//  ViewController.swift
//  NavigatorDemo
//
//  Created by Mohamed Hussien on 17/04/2019.
//  Copyright © 2019 HNF. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var nametxt: UITextField!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nameTxt(_ sender: Any) {
        name = nametxt.text
    }
    
    @IBAction func submit(_ sender: Any) {
        self.view.endEditing(true)
        NavigationCoordinator.shared.mainNavigator.navigate(To: .secondeViewController(name))
    }
    
}

