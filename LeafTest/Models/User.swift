//
//  User.swift
//  App
//
//  Created by Luis Castillo on 11/16/19.
//

import Foundation
import Vapor

struct User: Codable {
    let name: String
    let age: Int
    let city: String
    let hobbies: [String]
    
    init(name: String, age: Int, city: String, hobbies: [String] = []) {
        self.name = name
        self.age = age
        self.city = city
        self.hobbies = hobbies
    }
}

extension User: Content{
    
}
