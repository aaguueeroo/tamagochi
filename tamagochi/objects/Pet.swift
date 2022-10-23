//
//  Pet.swift
//  tamagochi
//
//  Created by Julia Parker on 9/10/22.
//

import Foundation

class Pet {
    private var name: String
    private var weigth: Double
    private var heigth: Double
    private var satiation: Int
    private var energy: Int
    private var entertainment: Int
    private var health: Int
//    var apariencia: Apariencia
    
    //CONSTRUCTOR
    init(name: String = "Oreo", weigth: Double = 1, heigth: Double = 20, satiation: Int = 10, energy: Int = 100, fun: Int = 100, health: Int = 100) {
        self.name = name
        self.weigth = weigth
        self.heigth = heigth
        self.satiation = satiation
        self.energy = energy
        self.entertainment = fun
        self.health = health
        
        Timer.scheduledTimer(withTimeInterval: 10, repeats: true) { _ in
            print(GameController.pet.getSatiation())
            GameController.pet.modifySatiation(amount: -1)
        }
    }
    
    //SETTERS AND GETTERS
    func setName(name: String) { self.name = name }
    func getName() -> String { return self.name }
    
    func setWeigth(weight: Double) { self.weigth = weight }
    func getWeight() -> Double { return self.weigth }
    
    func setHeight(height: Double) { self.heigth = height }
    func getHeight() -> Double { return self.heigth }
    
    func setSatiation(satiation: Int) { self.satiation = satiation }
    func getSatiation() -> Int { return self.satiation }
    
    func setEnergy(energy: Int) { self.energy = energy }
    func getEnergy() -> Int { return self.energy }
    
    func setEntertainment(entertainment: Int) { self.entertainment = entertainment }
    func getEntertainment() -> Int { return self.entertainment }
    
    func setHealth(health: Int) { self.health = health }
    func getHealth() -> Int { return self.health }
    
    
    //FUNCTIONS
    func modifySatiation(amount: Int) {
        satiation += amount
        if (satiation>100)  { satiation = 100 }
        else if (satiation<0) { satiation = 0 }
    }
    
    func modifyEnergy(amount: Int) {
        energy += amount
        if (energy>100)  { energy = 100 }
        else if (energy<0) { energy = 0 }
    }
    
    func modifyEntertainment(amount: Int) {
        entertainment += amount
        if (entertainment>100)  { entertainment = 100 }
        else if (entertainment<0) { entertainment = 0 }
    }
    
    func modifyHealth(amount: Int) {
        health += amount
        if (health>100)  { health = 100 }
        else if (health<0) { health = 0 }
        
    }
    
}
