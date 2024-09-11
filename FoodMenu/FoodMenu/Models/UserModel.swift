//
//  UserModel.swift
//  FoodMenu
//
//  Created by Winky51 on 10.09.2024.
//

import Foundation

class UserModel {
    
    static let shared = UserModel()
    
    var name = "010"
    var surname = "020"
    var phone = "12345"
    var password = "12345"
    var adress = ""
    let image = ""
    var registrationStatus = false
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    
    
    init(){}
}
