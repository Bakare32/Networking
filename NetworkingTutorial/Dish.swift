//
//  Dish.swift
//  NetworkingTutorial
//
//  Created by  Decagon on 07/11/2021.
//

import Foundation

struct Dish: Decodable {
    let id, name, description, image : String?
    let calories: Int?
    
    var formattedCalegories: String {
        return "\(calories ?? 0) calories"
    }
}
