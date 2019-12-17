//
//  QuizLevelViewController.swift
//  FlexEat
//
//  Created by Celeste Tan on 17/12/19.
//  Copyright © 2019 FlexEat. All rights reserved.
//

import UIKit

class QuizLevelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "firstLevelQuizStart"){
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 1
            }
        } else if (segue.identifier == "secondLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 2
            }
        } else if (segue.identifier == "thirdLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 3
            }
        } else if (segue.identifier == "fourthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 4
            }
        } else if (segue.identifier == "fifthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 5
            }
        } else if (segue.identifier == "sixthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 6
            }
        } else if (segue.identifier == "seventhLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 7
            }
        } else if (segue.identifier == "eighthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 8
            }
        } else if (segue.identifier == "ninthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 9
            }
        } else if (segue.identifier == "tenthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 10
            }
        } else if (segue.identifier == "eleventhLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 11
            }
        } else if (segue.identifier == "twelfthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 12
            }
        } else if (segue.identifier == "thirteenthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 13
            }
        } else if (segue.identifier == "fourteenthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 14
            }
        } else if (segue.identifier == "fifteenthLevelQuizStart") {
            if let nextViewController = segue.destination as? QuizzesViewController {
                nextViewController.quizLevel = 15
            }
        }
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
