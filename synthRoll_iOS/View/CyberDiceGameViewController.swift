//
//  CyberDiceGame.swift
//  synthRoll_iOS
//
//  Created by Andrew Bui on 4/10/21.
//

import Foundation
import UIKit

class CyberDiceGameViewController: UIViewController {
    
    private let viewModel = CyberDiceGameViewModel()
    
    private lazy var dissmissViewControllerBarButtonItem: UIBarButtonItem = {
        let uiBarButtonItem = UIBarButtonItem(
            title: "Dismiss",
            style: .plain,
            target: self,
            action: #selector(dismissCyberDiceGameViewController)
        )
        uiBarButtonItem.tintColor = .white
        return uiBarButtonItem
    }()
    
    private let diceImageView01: UIImageView = {
        let uiImageView = UIImageView()
        uiImageView.translatesAutoresizingMaskIntoConstraints = false
        uiImageView.contentMode = .scaleAspectFill
        return uiImageView
    }()
    
    private let rollCyberDiceButton: UIButton = {
        let uiButton = UIButton()
        uiButton.translatesAutoresizingMaskIntoConstraints = false
        uiButton.setTitle("Roll CyberDice", for: .normal)
        uiButton.setTitleColor(.white, for: .normal)
        uiButton.addTarget(self, action: #selector(didPressRollCyberDiceButton), for: .touchUpInside)
        return uiButton
    }()
    
    override func viewDidLoad() {
        setUpViewController()
        setUpNavigationController()
        
        view.addSubview(diceImageView01)
        view.addSubview(rollCyberDiceButton)
        
        diceImageView01.image = viewModel.randomDiceImage()
        
        NSLayoutConstraint.activate([
            diceImageView01.widthAnchor.constraint(equalToConstant: 200),
            diceImageView01.heightAnchor.constraint(equalToConstant: 200),
            diceImageView01.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            diceImageView01.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            rollCyberDiceButton.widthAnchor.constraint(equalToConstant: 200),
            rollCyberDiceButton.heightAnchor.constraint(equalToConstant: 50),
            rollCyberDiceButton.topAnchor.constraint(equalTo: diceImageView01.bottomAnchor, constant: 20.0),
            rollCyberDiceButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    func setUpNavigationController() {
        navigationItem.leftBarButtonItem = dissmissViewControllerBarButtonItem
    }
    
    func setUpViewController() {
        title = "Cyber Dice"
        view.backgroundColor = .systemPurple
    }
    
    @objc func didPressRollCyberDiceButton() {
        diceImageView01.image = viewModel.randomDiceImage()
    }
    
    @objc func dismissCyberDiceGameViewController() {
        dismiss(animated: true, completion: nil)
    }
}
