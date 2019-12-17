//
//  FinishedQuizViewController.swift
//  FlexEat
//
//  Created by Celeste Tan on 17/12/19.
//  Copyright © 2019 FlexEat. All rights reserved.
//

import UIKit

class FinishedQuizViewController: UIViewController {

    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var pointsAddedLabel: UILabel!
    @IBOutlet weak var totalCoinsLabel: UILabel!
    
    var pointsAdded: Int?
    var totalCoins: Int?
    
    override func viewDidAppear(_ animated: Bool) {
        updateCoins()
        setUpElements()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setUpElements() {
        Utilities.styleFilledButton(doneButton)
        pointsAddedLabel.text = "Coins earned: \(String(describing: pointsAdded))"
        totalCoinsLabel.text = "Total Coins: \(String(describing: totalCoins))"
    }
    
    func updateCoins() {
        let defaults = UserDefaults.standard
        let currentCoins = defaults.integer(forKey: "totalCoins")
        if totalCoins != nil {
            totalCoins = pointsAdded! + currentCoins
        } else {
            totalCoins = currentCoins
        }
        defaults.set(totalCoins, forKey: "totalCoins")
        print(totalCoins)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
