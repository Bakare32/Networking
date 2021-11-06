//
//  Route.swift
//  NetworkingTutorial
//
//  Created by  Decagon on 06/11/2021.
//

import Foundation


enum Route {
    
    static let basicUrl = "https://yummie.glitch.me"
    
    case temp
    
    var description: String {
        switch self {
        case .temp: return "/"
        }
    }
}
