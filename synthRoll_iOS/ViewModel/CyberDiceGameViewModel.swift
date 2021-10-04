//
//  CyberDiceGameViewModel.swift
//  synthGames_iOS
//
//  Created by Andrew Bui on 4/10/21.
//

import Foundation
import UIKit

class CyberDiceGameViewModel: NSObject {
    private let randomDiceNumber = RandomDiceNumber()
    private let cyberDiceImage = CyberDiceImage()
    
    func randomDiceImage() -> UIImage? {
        switch randomDiceNumber.randomDiceValue {
        case 1:
            return cyberDiceImage.diceFace01
        case 2:
            return cyberDiceImage.diceFace02
        case 3:
            return cyberDiceImage.diceFace03
        case 4:
            return cyberDiceImage.diceFace04
        case 5:
            return cyberDiceImage.diceFace05
        case 6:
            return cyberDiceImage.diceFace06
        default:
            return cyberDiceImage.diceFace01
        }
    }
}
