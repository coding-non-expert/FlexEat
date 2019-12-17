//
//  Quiz.swift
//  FlexEat
//
//  Created by Celeste Tan on 17/12/19.
//  Copyright © 2019 FlexEat. All rights reserved.
//

import Foundation

enum OptionChoice {
    case one
    case two
    case three
    case four
}

struct Quiz {
    var question: String
    var optionOne: String
    var optionTwo: String
    var optionThree: String
    var optionFour: String
    var correctOption: OptionChoice
}


