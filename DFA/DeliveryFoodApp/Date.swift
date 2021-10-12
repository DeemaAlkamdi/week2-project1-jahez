//
//  Date.swift
//  DeliveryFoodApp
//
//  Created by dmdm on 10/10/2021.
//

import UIKit
 
var counter : [String:Int] = [:]


struct Food {
    let name : String
    let image : String
    let price : Int
}
struct Rest {
    let name: String
    let logo: String
    let rating: Int
    let type: String
    let state: String
    let foods: Array <Food>
    
}

let restList = [
    Rest (
        name: "Lean Meals",
        logo: "LM",
        rating: 4,
        type: "healthy",
        state: "open",
        foods: [
            Food (
                name: "Chicken sandwich",
                image: "CS",
                price: 18
            )
            ]
     ),
    
    Rest(
        name: "Fit House",
        logo: "FT",
        rating: 4,
        type: "healthy",
        state: "open",
        
        foods: [Food ( name: "Chilli Beef",
                      image: "CB",
                      price: 25)
        ]
    ),
    
    Rest (
        name: "Fit Kitchen",
        logo: "FK",
        rating: 5,
        type: "healthy",
        state: "open",
        
        foods: [Food ( name: "Chicken Mastard",
                      image: "CM",
                      price: 18)
        ]
    ),
    
    Rest(
        name: "Flex Kitchen",
        logo: "FKk",
        rating: 4,
        type: "healthy",
        state: "open",
        
        foods: [Food ( name: "Chicken Pesto",
                      image: "CP",
                      price: 18)
        ]
    ),
]
