//
//  QuizzesViewController.swift
//  FlexEat
//
//  Created by Celeste Tan on 17/12/19.
//  Copyright © 2019 FlexEat. All rights reserved.
//

import UIKit

class QuizzesViewController: UIViewController {
    
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var optionThreeButton: UIButton!
    @IBOutlet weak var optionFourButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    var currentQuiz = 0
    var points = 0
    var quizLevel: Int?
    
    let firstLevelQuizzes = [
        Quiz(question: "How many percent of the earth is covered with oceans?", optionOne: "30%", optionTwo: "50%", optionThree: "70%", optionFour: "90%", correctOption: .three),
        Quiz(question: "How many percent of the earth does the largest ocean cover?", optionOne: "15%", optionTwo: "20%", optionThree: "25%", optionFour: "30%", correctOption: .four),
        Quiz(question: "How many percent of the oxygen we breathe is produced by the oceans?", optionOne: "20%", optionTwo: "40%", optionThree: "70%", optionFour: "80%", correctOption: .three)
    ]
    
    let secondLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let thirdLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let fourthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let fifthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let sixthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let seventhLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let eighthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let ninthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let tenthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let eleventhLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let twelfthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let thirteenthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let fourteenthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    let fifteenthLevelQuizzes = [
        Quiz(question: "<#T##String#>", optionOne: "<#T##String#>", optionTwo: "<#T##String#>", optionThree: "<#T##String#>", optionFour: "<#T##String#>", correctOption: .one)
    ]
    
    override func viewDidAppear(_ animated: Bool) {
        setUpElements()
        if quizLevel == 1 {
            displayFirstLevelQuiz()
        } else if quizLevel == 2 {
            displaySecondLevelQuiz()
        } else if quizLevel == 3 {
            displayThirdLevelQuiz()
        } else if quizLevel == 4 {
            displayFourthLevelQuiz()
        } else if quizLevel == 5 {
            displayFifthLevelQuiz()
        } else if quizLevel == 6 {
            displaySixthLevelQuiz()
        } else if quizLevel == 7 {
            displaySeventhLevelQuiz()
        } else if quizLevel == 8 {
            displayEighthLevelQuiz()
        } else if quizLevel == 9 {
            displayNinthLevelQuiz()
        } else if quizLevel == 10 {
            displayTenthLevelQuiz()
        } else if quizLevel == 11 {
            displayEleventhLevelQuiz()
        } else if quizLevel == 12 {
            displayTwelfthLevelQuiz()
        } else if quizLevel == 13 {
            displayThirteenthLevelQuiz()
        } else if quizLevel == 14 {
            displayFourteenthLevelQuiz()
        } else if quizLevel == 15 {
            displayFifteenthLevelQuiz()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setUpElements() {
        Utilities.styleFilledButton(optionOneButton)
        Utilities.styleFilledButton(optionTwoButton)
        Utilities.styleFilledButton(optionThreeButton)
        Utilities.styleFilledButton(optionFourButton)
    }
    
    @IBAction func optionOnePressed(_ sender: Any) {
        if quizLevel == 1 {
            if firstLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFirstLevelQuiz()
        } else if quizLevel == 2 {
            if secondLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySecondLevelQuiz()
        } else if quizLevel == 3 {
            if thirdLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayThirdLevelQuiz()
        } else if quizLevel == 4 {
            if fourthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFourthLevelQuiz()
        } else if quizLevel == 5 {
            if fifthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFifthLevelQuiz()
        } else if quizLevel == 6 {
            if sixthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySixthLevelQuiz()
        } else if quizLevel == 7 {
            if seventhLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySeventhLevelQuiz()
        } else if quizLevel == 8 {
            if eighthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayEighthLevelQuiz()
        } else if quizLevel == 9 {
            if ninthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayNinthLevelQuiz()
        } else if quizLevel == 10 {
            if tenthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayTenthLevelQuiz()
        } else if quizLevel == 11 {
            if eleventhLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayEleventhLevelQuiz()
        } else if quizLevel == 12 {
            if twelfthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayTwelfthLevelQuiz()
        } else if quizLevel == 13 {
            if thirteenthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayThirteenthLevelQuiz()
        } else if quizLevel == 14 {
            if fourteenthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFourteenthLevelQuiz()
        } else if quizLevel == 15 {
            if fifteenthLevelQuizzes[currentQuiz].correctOption == .one {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFifteenthLevelQuiz()
        }
    }
    
    @IBAction func optionTwoPressed(_ sender: Any) {
        if quizLevel == 1 {
            if firstLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFirstLevelQuiz()
        } else if quizLevel == 2 {
            if secondLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySecondLevelQuiz()
        } else if quizLevel == 3 {
            if thirdLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayThirdLevelQuiz()
        } else if quizLevel == 4 {
            if fourthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFourthLevelQuiz()
        } else if quizLevel == 5 {
            if fifthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFifthLevelQuiz()
        } else if quizLevel == 6 {
            if sixthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySixthLevelQuiz()
        } else if quizLevel == 7 {
            if seventhLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySeventhLevelQuiz()
        } else if quizLevel == 8 {
            if eighthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayEighthLevelQuiz()
        } else if quizLevel == 9 {
            if ninthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayNinthLevelQuiz()
        } else if quizLevel == 10 {
            if tenthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayTenthLevelQuiz()
        } else if quizLevel == 11 {
            if eleventhLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayEleventhLevelQuiz()
        } else if quizLevel == 12 {
            if twelfthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayTwelfthLevelQuiz()
        } else if quizLevel == 13 {
            if thirteenthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayThirteenthLevelQuiz()
        } else if quizLevel == 14 {
            if fourteenthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFourteenthLevelQuiz()
        } else if quizLevel == 15 {
            if fifteenthLevelQuizzes[currentQuiz].correctOption == .two {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFifteenthLevelQuiz()
        }
    }
    
    @IBAction func optionThreePressed(_ sender: Any) {
        if quizLevel == 1 {
            if firstLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFirstLevelQuiz()
        } else if quizLevel == 2 {
            if secondLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySecondLevelQuiz()
        } else if quizLevel == 3 {
            if thirdLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayThirdLevelQuiz()
        } else if quizLevel == 4 {
            if fourthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFourthLevelQuiz()
        } else if quizLevel == 5 {
            if fifthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFifthLevelQuiz()
        } else if quizLevel == 6 {
            if sixthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySixthLevelQuiz()
        } else if quizLevel == 7 {
            if seventhLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySeventhLevelQuiz()
        } else if quizLevel == 8 {
            if eighthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayEighthLevelQuiz()
        } else if quizLevel == 9 {
            if ninthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayNinthLevelQuiz()
        } else if quizLevel == 10 {
            if tenthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayTenthLevelQuiz()
        } else if quizLevel == 11 {
            if eleventhLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayEleventhLevelQuiz()
        } else if quizLevel == 12 {
            if twelfthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayTwelfthLevelQuiz()
        } else if quizLevel == 13 {
            if thirteenthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayThirteenthLevelQuiz()
        } else if quizLevel == 14 {
            if fourteenthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFourteenthLevelQuiz()
        } else if quizLevel == 15 {
            if fifteenthLevelQuizzes[currentQuiz].correctOption == .three {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFifteenthLevelQuiz()
        }
    }
    
    @IBAction func optionFourPressed(_ sender: Any) {
        if quizLevel == 1 {
            if firstLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFirstLevelQuiz()
        } else if quizLevel == 2 {
            if secondLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySecondLevelQuiz()
        } else if quizLevel == 3 {
            if thirdLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayThirdLevelQuiz()
        } else if quizLevel == 4 {
            if fourthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFourthLevelQuiz()
        } else if quizLevel == 5 {
            if fifthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFifthLevelQuiz()
        } else if quizLevel == 6 {
            if sixthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySixthLevelQuiz()
        } else if quizLevel == 7 {
            if seventhLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displaySeventhLevelQuiz()
        } else if quizLevel == 8 {
            if eighthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayEighthLevelQuiz()
        } else if quizLevel == 9 {
            if ninthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayNinthLevelQuiz()
        } else if quizLevel == 10 {
            if tenthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayTenthLevelQuiz()
        } else if quizLevel == 11 {
            if eleventhLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayEleventhLevelQuiz()
        } else if quizLevel == 12 {
            if twelfthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayTwelfthLevelQuiz()
        } else if quizLevel == 13 {
            if thirteenthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayThirteenthLevelQuiz()
        } else if quizLevel == 14 {
            if fourteenthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFourteenthLevelQuiz()
        } else if quizLevel == 15 {
            if fifteenthLevelQuizzes[currentQuiz].correctOption == .four {
                statusLabel.text = "Correct!"
                points += 1
            } else {
                statusLabel.text = "Wrong!"
            }
            currentQuiz += 1
            displayFifteenthLevelQuiz()
        }
    }
    
    func displayFirstLevelQuiz() {
        if currentQuiz < 2 {
            pointsLabel.text = "points: \(points)"
            questionLabel.text = firstLevelQuizzes[currentQuiz].question
            optionOneButton.setTitle(firstLevelQuizzes[currentQuiz].optionOne, for:    .normal)
            optionTwoButton.setTitle(firstLevelQuizzes[currentQuiz].optionTwo, for:     .normal)
            optionThreeButton.setTitle(firstLevelQuizzes[currentQuiz].optionThree, for: .normal)
            optionFourButton.setTitle(firstLevelQuizzes[currentQuiz].optionFour, for: .normal)
        } else {
            performSegue(withIdentifier: "finishedQuiz", sender: nil)
        }
    }
    
    func displaySecondLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = secondLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(secondLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(secondLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(secondLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(secondLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayThirdLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = thirdLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(thirdLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(thirdLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(thirdLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(thirdLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayFourthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = fourthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(fourthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(fourthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(fourthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(fourthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayFifthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = fifthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(fifthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(fifthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(fifthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(fifthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displaySixthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = sixthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(sixthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(sixthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(sixthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(sixthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displaySeventhLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = seventhLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(seventhLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(seventhLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(seventhLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(seventhLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayEighthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = eighthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(eighthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(eighthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(eighthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(eighthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayNinthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = ninthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(ninthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(ninthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(ninthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(ninthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayTenthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = tenthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(tenthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(tenthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(tenthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(tenthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayEleventhLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = eleventhLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(eleventhLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(eleventhLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(eleventhLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(eleventhLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayTwelfthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = twelfthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(twelfthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(twelfthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(twelfthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(twelfthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayThirteenthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = thirteenthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(thirteenthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(thirteenthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(thirteenthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(thirteenthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayFourteenthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = fourteenthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(fourteenthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(fourteenthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(fourteenthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(fourteenthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    func displayFifteenthLevelQuiz() {
        pointsLabel.text = "points: \(points)"
        questionLabel.text = fifteenthLevelQuizzes[currentQuiz].question
        optionOneButton.setTitle(fifteenthLevelQuizzes[currentQuiz].optionOne, for: .normal)
        optionTwoButton.setTitle(fifteenthLevelQuizzes[currentQuiz].optionTwo, for: .normal)
        optionThreeButton.setTitle(fifteenthLevelQuizzes[currentQuiz].optionThree, for: .normal)
        optionFourButton.setTitle(fifteenthLevelQuizzes[currentQuiz].optionFour, for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "finishedQuiz") {
            if let nextViewController = segue.destination as? FinishedQuizViewController {
                nextViewController.pointsAdded = self.points
            }
        }
    }

}
