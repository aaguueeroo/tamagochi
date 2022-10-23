//
//  data.swift
//  tamagochi
//
//  Created by Julia Parker on 10/10/22.
//

import Foundation

struct tamagochiData{
    struct Food {
        let name: String
        let price: Int
        let nutrition: Int
    }
    
    private let foodData: [Food] = [
        Food(name: "Water", price: 0, nutrition: 1),
        Food(name: "Milk", price: 2, nutrition: 2),
        Food(name: "Treat", price: 3, nutrition: 3),
        Food(name: "Bacon", price: 5, nutrition: 6),
        Food(name: "Pizza", price: 8, nutrition: 10),
        Food(name: "Chicken", price: 10, nutrition: 15),
        Food(name: "Fish", price: 10, nutrition: 15),
        Food(name: "Lobster", price: 60, nutrition: 80),
    ]
    
    func getFoodData() -> [Food] {
        return foodData
    }
    
}
