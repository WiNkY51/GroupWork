//
//  DataModel.swift
//  FoodMenu
//
//  Created by Winky51 on 09.09.2024.
//

import Foundation

struct User {
    let name: String
    let surName: String
    var fullname: String {
        "\(name) \(surName)"
    }
    let phone: String
    let adress: String
    let image: String
    let id: UUID
}

struct FoodMenu {
    let title: String
    let description: String
    let price: String
    let image: String
    //let type: FoodType
}

//enum FoodType {
//    case fish:
//    
//}
