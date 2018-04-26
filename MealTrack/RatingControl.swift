//
//  RatingControl.swift
//  MealTrack
//
//  Created by Faisal Manzer on 26/04/18.
//  Copyright © 2018 Faisal Manzer. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButtons()
        
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        
        setupButtons()
    }
    
    //MARK: Private Methods
    private func setupButtons(){
        for _ in 0..<starCount {
            
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // add constrains
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // add button to the stack
            addArrangedSubview(button)
            
        }
    }
    
    //MARK: Button Action
    @objc func ratingButtonTapped(button: UIButton){
        print("Button pressed 👍")
    }
    
}
