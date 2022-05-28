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
    
    private let user = "User"
    private let password = "Password"

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else
        { return }
        welcomeVC.user = user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func logInButtonPressed() {
            
        guard let inputText = userNameTextField.text, !inputText.isEmpty else {
            showAlert(with: "User Name is empty",
            and: "Please, enter user name")
            return
        }
        if let _ = Double(inputText) {
            showAlert(with: "Wrong format",
            and: "Please, enter words")
        }
        guard let inputTextTwo = passwordTextFiled.text, !inputTextTwo.isEmpty else {
            showAlert(with: "I need your password",
            and: "Please, enter your password")
            return
        }
        if userNameTextField.text != user || passwordTextFiled.text != password {
            showAlert(with: "Your made a mistake",
            and: "Please, enter correct login or password")
        }
        }
    
    @IBAction func forgetUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your user name is \(user)😉")
        }
    @IBAction func forgetPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is \(password)😜")
    }
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title,
        message: massage,
        preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextFiled.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
