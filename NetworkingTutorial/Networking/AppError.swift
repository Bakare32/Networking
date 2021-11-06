//
//  AppError.swift
//  NetworkingTutorial
//
//  Created by  Decagon on 06/11/2021.
//

import Foundation


enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidURL
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        
        case .errorDecoding:
            return "Error in decoding"
        case .unknownError:
            return "Bruhh is do not know what went wrong"
        case .invalidURL:
            return "HEY!! Give me a valid URL"
        case .serverError(let error):
            return error
        }
    }
}
