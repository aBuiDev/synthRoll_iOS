//
//  CyberDiceViewController.swift
//  synthRoll_iOS
//
//  Created by Andrew Bui on 15/8/21.
//

import UIKit

class CyberDice_ViewController: UIViewController {
    
    var firstValue: Int
    var secondValue: Int
    var thirdValue: Int
    
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

        // Setup CyberDice View
        view.backgroundColor = .blue

        // Setup CyberDice Navigation ViewController
        self.title = "Rolled Cyber Dice"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Return", style: .plain, target: self, action: #selector(dismissSelf))
        
        setupView()
    }
    
    func setupView() {
        print("First Random Number: \(firstValue)")
        print("Second Random Number: \(secondValue)")
        print("Third Random Numnber: \(thirdValue)")
    }
    
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}
