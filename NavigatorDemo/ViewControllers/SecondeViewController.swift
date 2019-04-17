//
//  SecondeViewController.swift
//  NavigatorDemo
//
//  Created by Mohamed Hussien on 17/04/2019.
//  Copyright © 2019 HNF. All rights reserved.
//

import UIKit

class SecondeViewController: BaseViewController {

    @IBOutlet weak var nameLbl: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = name 
    }
    

    

}
