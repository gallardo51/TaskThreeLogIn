//
//  ViewController.swift
//  TaskThreeLogIn
//
//  Created by Александр Соболев on 24.05.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func logInButtonPressed() {
    }
    
    @IBAction func forgetUserNameButtonPressed() {
    }
    @IBAction func forgetPassordButtonPressed() {
    }
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextFiled.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
