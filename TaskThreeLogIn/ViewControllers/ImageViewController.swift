//
//  ImageViewController.swift
//  TaskThreeLogIn
//
//  Created by Александр Соболев on 12.06.2022.
//

import UIKit

class ImageViewController: UIViewController {
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1)
    private let secondaryColor = UIColor(
        red: 110/255,
        green: 180/255,
        blue: 150/255,
        alpha: 1)
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
    

}
