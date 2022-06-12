//
//  UserInfoViewController.swift
//  TaskThreeLogIn
//
//  Created by Александр Соболев on 12.06.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var userBornDataLabel: UILabel!
    @IBOutlet weak var userCityFromLabel: UILabel!
    @IBOutlet weak var userCellPhoneLabel: UILabel!
    @IBOutlet weak var userPetsLabel: UILabel!
    
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.nameSurname
        userBornDataLabel.text = "Дата рождения: \(user.person.bornData)"
        userCityFromLabel.text = "Родной город: \(user.person.cityFrom)"
        userCellPhoneLabel.text = "Номер телефона: \(user.person.cellPhone)"
        userPetsLabel.text = "Домашнее животное: \(user.person.userPets)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }
    @IBAction func photoButtonPressed() {
    }
}
