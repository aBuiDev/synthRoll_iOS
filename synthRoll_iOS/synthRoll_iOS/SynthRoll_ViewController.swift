//
//  ViewController.swift
//  synthRoll_iOS
//
//  Created by Andrew Bui on 15/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    private var cyberDiceViewContainer: UIView {
        let uiView = UIView()
        uiView.backgroundColor = UIColor.systemGray
        return uiView
    }
    
    private var rollButton: UIButton {
        let uiButton = UIButton()
        uiButton.frame = CGRect(x: 100, y: 100, width: 150, height: 50)
        uiButton.setTitle("Roll Cyber Die", for: .normal)
        uiButton.setTitleColor(UIColor.systemPink, for: .normal)
        uiButton.backgroundColor = UIColor.systemBlue
        uiButton.addTarget(self, action: #selector(ViewController.didTapRollButton), for: UIControl.Event.touchUpInside)
        return uiButton
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(rollButton)
    }
    
    @objc func didTapRollButton() {
        let cyberDiceViewController = CyberDice_ViewController()
        let synthRoll_navigationViewController = UINavigationController(rootViewController: cyberDiceViewController)
        synthRoll_navigationViewController.modalPresentationStyle = .fullScreen
        present(synthRoll_navigationViewController, animated: true)
    }


}




//    // Get the DiceViewController
//    let controller: DiceViewController
//    controller = storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
//
//    // Set the two values to random numbers from 1 to 6
//    controller.firstValue = randomDiceValue()
//    controller.secondValue = randomDiceValue()
//
//    // Present the view Controller
//    present(controller, animated: true, completion: nil)
