//
//  CyberDiceViewController.swift
//  synthRoll_iOS
//
//  Created by Andrew Bui on 15/8/21.
//

import UIKit

class CyberDice_ViewController: UIViewController {
    
    private var firstValue: Int
    private var secondValue: Int
    private var thirdValue: Int
    
    private var diceImage01: UIImageView {
        let uiImageView = UIImageView()
        uiImageView.frame = CGRect(x: 80, y: 250, width: 150, height: 150)
        uiImageView.image = setupDiceImage(firstValue)
        return uiImageView
    }
    
    private var diceImage02: UIImageView {
        let uiImageView = UIImageView()
        uiImageView.frame = CGRect(x: 80, y: 400, width: 150, height: 150)
        uiImageView.image = setupDiceImage(secondValue)
        return uiImageView
    }
    
    private var diceImage03: UIImageView {
        let uiImageView = UIImageView()
        uiImageView.frame = CGRect(x: 210, y: 325, width: 150, height: 150)
        uiImageView.image = setupDiceImage(thirdValue)
        return uiImageView
    }
    
    private var backgroundImage: UIImageView = {
        let uiImageView = UIImageView(frame: .zero)
        uiImageView.contentMode =  UIView.ContentMode.scaleAspectFill
        uiImageView.contentMode = .scaleToFill
        uiImageView.translatesAutoresizingMaskIntoConstraints = false
        uiImageView.image = UIImage(named: "synthRoll_background")
        return uiImageView
    }()
    
    private var rerollButton: UIButton {
        let uiButton = UIButton()
        uiButton.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        uiButton.setTitle("Reroll", for: .normal)
        uiButton.setTitleColor(UIColor.red, for: .normal)
        uiButton.addTarget(self, action: #selector(CyberDice_ViewController.didTapReroll), for: UIControl.Event.touchUpInside)
        return uiButton
    }

    
    init(firstValue: Int, secondValue: Int, thirdValue: Int) {
        self.firstValue = firstValue
        self.secondValue = secondValue
        self.thirdValue = thirdValue
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white

        // Setup CyberDice Navigation ViewController
        self.title = "Rolled Cyber Dice"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Return", style: .plain, target: self, action: #selector(dismissSelf))
        
        setupView()
    }
    
    func setupView() {
        view.addSubview(diceImage01)
        view.addSubview(diceImage02)
        view.addSubview(diceImage03)
        
        view.addSubview(rerollButton)
    }
    
    func setupDiceImage(_ randomValue: Int) -> UIImage? {
        switch randomValue {
        case 0:
            return UIImage(named: "cyberDice_02")
        case 1:
            return UIImage(named: "cyberDice_02")
        case 2:
            return UIImage(named: "cyberDice_03")
        case 3:
            return UIImage(named: "cyberDice_04")
        case 4:
            return UIImage(named: "cyberDice_05")
        case 5:
            return UIImage(named: "cyberDice_01")
        default:
            return UIImage(named: "cyberDice_01")
        }
    }
    
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func didTapReroll() {
        firstValue = Int(arc4random_uniform(6))
        secondValue = Int(arc4random_uniform(6))
        thirdValue = Int(arc4random_uniform(6))
        viewDidLoad()
    }
}
