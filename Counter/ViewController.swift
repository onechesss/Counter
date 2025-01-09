//
//  ViewController.swift
//  Counter
//
//  Created by oneche$$$ on 09.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var counterOfTaps: UILabel!
    
    @IBOutlet weak var add1Button: UIButton!
    
    @IBAction func touchAdd1Button() {
        counter += 1
        counterOfTaps.text = "Значение счётчика: \(counter)"
        let date = Date()
        historyOfChanges.text += "\n\(date): значение изменено на +1"
    }
    
    
    
    
    @IBOutlet weak var substract1button: UIButton!
    
    @IBAction func touchSubstract1Button() {
        let date = Date()
        if counter > 0 {
            counter -= 1
            historyOfChanges.text += "\n\(date): значение изменено на -1"
        } else {
            historyOfChanges.text += "\n\(date): попытка уменьшить значение счётчика ниже 0"
        }
        counterOfTaps.text = "Значение счётчика: \(counter)"
    }
    
    
    

    @IBOutlet weak var resetCounterButton: UIButton!
    
    @IBAction func touchResetCounterButton() {
        counter = 0
        counterOfTaps.text = "Значение счётчика: \(counter)"
        let date = Date()
            historyOfChanges.text += "\n\(date): значение сброшено"
    }
    
    
    
    @IBOutlet weak var historyOfChanges: UITextView!
    
    private var counter = 0
}

