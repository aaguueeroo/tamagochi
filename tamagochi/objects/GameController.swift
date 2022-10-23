//
//  GameController.swift
//  tamagochi
//
//  Created by Julia Parker on 22/10/22.
//

import Foundation

class GameController {
    
    static var pet = Pet()
    private var money: Int = 10 {
        get { return money }
        set { money = new}
    }
    
    //CONSTRUCTOR
    init(money: Int = 10) {
        self.money = money
    }
    
    //FUNCTIONS
    func getMoney() -> Int { return money }
    func modifyMoney(amount: Int) {
        self.money += amount
        if (money<0) { money = 0 }
    }
    
}
