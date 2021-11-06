//
//  ApiResponse.swift
//  NetworkingTutorial
//
//  Created by  Decagon on 06/11/2021.
//

import Foundation


struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}
