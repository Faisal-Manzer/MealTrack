//
//  Meal.swift
//  MealTrack
//
//  Created by Faisal Manzer on 27/04/18.
//  Copyright © 2018 Faisal Manzer. All rights reserved.
//

import UIKit

class Meal: NSObject, NSCoding {
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    struct PropertyKey {
        static let name = "name"
        static let photo = "photo"
        static let rating = "rating"
    }
    
    init?(name: String, photo: UIImage?, rating: Int) {
        super.init()
        
        // Initialization should fail if there is no name or if the rating is negative.
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
