//
//  ViewController.swift
//  TaskThreeLogIn
//
//  Created by Александр Соболев on 24.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    //MARK: - Private properties
    private let user = User.getUserData()
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserInfoViewController
                userInfoVC.user = user
            }
        }
    }
    
    //MARK: - IBActions
    @IBAction func logInButtonPressed() {
        
        guard let inputText = userNameTextField.text, !inputText.isEmpty else {
            showAlert(with: "User Name is empty🤷‍♂️",
                      and: "Please, enter user name")
            return
        }
        if let _ = Double(inputText) {
            showAlert(with: "Wrong format🤔",
                      and: "Please, enter letters in user name")
        }
        guard let inputTextTwo = passwordTextFiled.text, !inputTextTwo.isEmpty
        else {
            showAlert(with: "I need your password🤨",
                      and: "Please, enter your password")
            return
        }
        if userNameTextField.text != user.login || passwordTextFiled.text != user.password {
            showAlert(with: "Your made a mistake🤭",
                      and: "Please, enter correct login or password",
                      textField: passwordTextFiled
            )
        }
    }
    
    @IBAction func forgetUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your user name is \(user.login)😉")
    }
    @IBAction func forgetPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is \(user.password)😜")
    }
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextFiled.text = ""
    }
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert(with title: String, and massage: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextFiled.becomeFirstResponder()
        } else {
            logInButtonPressed()
            performSegue(withIdentifier: "Welcome", sender: nil)
        }
        return true
    }
}
