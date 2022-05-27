//
//  ViewController.swift
//  TaskThreeLogIn
//
//  Created by Александр Соболев on 24.05.2022.
//

import UIKit

let userName = "User"
let password = "Password"

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func logInButtonPressed() {
        guard let inputText = userNameTextField.text, !inputText.isEmpty else {
            showAlert(with: "User Name is empty", and: "Please, enter user name")
            return
        }
        if let _ = Double(inputText) {
            showAlert(with: "Wrong format", and: "Please, enter words")
        }
    }
    
    @IBAction func forgetUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your user name is User😉")
        }
    @IBAction func forgetPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is Password😜")
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
