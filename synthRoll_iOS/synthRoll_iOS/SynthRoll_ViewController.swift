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
        let randomValueOne = Int(arc4random_uniform(6))
        let randomValueTwo = Int(arc4random_uniform(6))
        let randomValueThree = Int(arc4random_uniform(6))
        
        let cyberDiceViewController = CyberDice_ViewController(firstValue: randomValueOne, secondValue: randomValueTwo, thirdValue: randomValueThree)
        
        let synthRoll_navigationViewController = UINavigationController(rootViewController: cyberDiceViewController)
        synthRoll_navigationViewController.modalPresentationStyle = .fullScreen
        synthRoll_navigationViewController.navigationBar.backgroundColor = UIColor.purple
        present(synthRoll_navigationViewController, animated: true)
    }
}

extension UINavigationController {
    override open var shouldAutorotate: Bool {
        return false
    }
}
