//
//  ViewController.swift
//  HW1_Task2
//
//  Created by admin on 12.03.2021.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    
    @IBOutlet weak var redField: UIView!
    @IBOutlet weak var yellowField: UIView!
    @IBOutlet weak var greenField: UIView!
    
    @IBOutlet weak var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainButton.layer.cornerRadius = 50
        
        redField.layer.cornerRadius = 60
        redField.alpha = 0.3
        
        yellowField.layer.cornerRadius = 60
        yellowField.alpha = 0.3
        
        greenField.layer.cornerRadius = 60
        greenField.alpha = 0.3
        
    }
    
    var iter = 0
    @IBAction func buttonPress(_ sender: Any) {
        iter += 1
        switch iter {
        case 1:
            mainButton.setTitle("Next", for: .normal)
            redField.alpha = 1
            yellowField.alpha = 0.3
            greenField.alpha = 0.3
            break
        case 2:
            redField.alpha = 0.3
            yellowField.alpha = 1
            greenField.alpha = 0.3
            break
        case 3:
            redField.alpha = 0.3
            yellowField.alpha = 0.3
            greenField.alpha = 1
            break
        case 4:
            iter = 0
            mainButton.setTitle("Start", for: .normal)
            redField.alpha = 0.3
            yellowField.alpha = 0.3
            greenField.alpha = 0.3
            break
        default:
            print("Error")
        }
    }
    

}

