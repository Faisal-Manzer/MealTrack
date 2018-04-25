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
    @IBOutlet weak var mealName: UITextField!
    @IBOutlet weak var mealLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mealName.delegate = self
    }

    //MARK: Action
    
    @IBAction func mealBtn(_ sender: Any) {
        mealLabel.text = "Default text"
    }
}

