//
//  ViewController.swift
//  Counter Application
//
//  Created by Максим Казанцев on 22.04.2023.
//

import UIKit

class ViewController: UIViewController {

    var valueCounter : Int = 0
    var nameLabel : String = "Значение счётчика:"
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.adjustsFontSizeToFitWidth = true // Убираем ограничение на длинну строки
        counterLabel.text = nameLabel + " " + String(valueCounter)
        counterLabel.font = UIFont(name: "Times New Roman", size: 20)
        
        counterButton.tintColor = .black
        counterButton.backgroundColor = .orange
        counterButton.layer.cornerRadius = 6
    }
    
    
 @IBAction func counterPlusOne(_ sender: UIButton) {
        valueCounter += 1
        counterLabel.text = nameLabel + " " +  String(valueCounter)
    }
    

}

