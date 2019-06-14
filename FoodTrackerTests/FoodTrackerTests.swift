//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Binh Phan on 05.06.19.
//  Copyright © 2019 Binh Phan. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    //MARK: Meal Class Test
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest possible rating
        let positiveRatingModel = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingModel)
    }
    
    // Confirm that the Meal initializer returns nil when passed a negative rating or an empty name
    func testMealInitializationFails() {
        
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: 0)
        XCTAssertNotNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNotNil(largeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNotNil(emptyStringMeal)
    }
}
