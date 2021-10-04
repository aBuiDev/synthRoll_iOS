//
//  ViewController.swift
//  synthRoll_iOS
//
//  Created by Andrew Bui on 15/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = SynthGamesLobbyViewModel()
    
    let cyberDiceGameNavigationController: UINavigationController = {
        let cyberDiceGameViewController = CyberDiceGameViewController()
        let uiNavigationController = UINavigationController(rootViewController: cyberDiceGameViewController)
        uiNavigationController.modalPresentationStyle = .fullScreen
        return uiNavigationController
    }()
    
    private var cyberDiceButton: UIButton = {
        let uiButton = UIButton()
        uiButton.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        uiButton.layer.cornerRadius = 5.0
        uiButton.setTitle("Cyber Dice", for: .normal)
        uiButton.setTitleColor(UIColor.white, for: .normal)
        uiButton.backgroundColor = UIColor.systemPurple
        uiButton.addTarget(self, action: #selector(didTapLoadCyberDiceGameButton), for: UIControl.Event.touchUpInside)
        return uiButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(cyberDiceButton)
        cyberDiceButton.center.x = view.center.x
        cyberDiceButton.center.y = view.center.y
    }
    
    @objc func didTapLoadCyberDiceGameButton() {
        present(cyberDiceGameNavigationController, animated: true)
    }
}

extension UINavigationController {
    override open var shouldAutorotate: Bool {
        return false
    }
}
