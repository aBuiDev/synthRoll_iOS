//
//  RandomDiceNumbers.swift
//  synthRoll_iOS
//
//  Created by Andrew Bui on 4/10/21.
//

import Foundation
import UIKit

struct RandomDiceNumber {
    var randomDiceValue: Int {
        return Int(arc4random_uniform(6))
    }
}


