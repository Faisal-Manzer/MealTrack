//
//  ViewController.swift
//  MealTrack
//
//  Created by Faisal Manzer on 25/04/18.
//  Copyright © 2018 Faisal Manzer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textInput: UITextField!
    
    //MARK: DefaultValues
    let defaultTextInput = ""
    let defaultTextInputPlaceholder = "Enter Meal Name"
    let defaultTextLabel = "Meal Name"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textInput.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide Keyboard
        textInput.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textLabel.text = textField.text
    }

    //MARK: Action
    @IBAction func resetButton(_ sender: UIButton) {
        textLabel.text = defaultTextLabel
        textInput.text = defaultTextInput
        textInput.resignFirstResponder()
    }
    
}

