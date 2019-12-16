//
//  GamesViewController.swift
//  FlexEat
//
//  Created by Celeste Tan on 16/12/19.
//  Copyright © 2019 FlexEat. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var coinsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
    }
    
    func setUpElements() {
        Utilities.styleCoinsLabel(coinsLabel)
    }

}
