//
//  CyberDiceViewController.swift
//  synthRoll_iOS
//
//  Created by Andrew Bui on 15/8/21.
//

import UIKit

class CyberDice_ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup CyberDice View
        view.backgroundColor = .blue

        // Setup CyberDice Navigation ViewController
        self.title = "Rolled Cyber Dice"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissSelf))
    }
    
    @objc func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}
