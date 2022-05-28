//
//  WelcomeViewController.swift
//  TaskThreeLogIn
//
//  Created by Александр Соболев on 27.05.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"

        
    }
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
