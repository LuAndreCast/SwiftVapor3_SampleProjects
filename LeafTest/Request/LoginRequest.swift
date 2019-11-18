//
//  LoginRequest.swift
//  App
//
//  Created by Luis Castillo on 11/17/19.
//

import Vapor

struct LoginRequest: Content {
    var email: String
    var password: String
}
