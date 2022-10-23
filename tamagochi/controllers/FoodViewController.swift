//
//  FoodViewController.swift
//  tamagochi
//
//  Created by Julia Parker on 10/10/22.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet var foodTableView: UITableView!
    
    override func viewDidLoad() {
        foodTableView.delegate = self
        foodTableView.dataSource = self
        updateProgressBar()
        Timer.scheduledTimer(withTimeInterval: 10, repeats: true) { [self] _ in
            updateProgressBar()
        }
    }
    
//    extension ViewController: UITableViewDelegate {
//
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tamagochiData().getFoodData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let foodItem = foodTableView.dequeueReusableCell(withIdentifier: "foodItem", for: indexPath) as! FoodTableViewCell
        foodItem.foodName.text=tamagochiData().getFoodData()[indexPath.row].name
        foodItem.foodImage.image=UIImage(named: tamagochiData().getFoodData()[indexPath.row].name)
        foodItem.priceLabel.text=String(tamagochiData().getFoodData()[indexPath.row].price)
        return foodItem
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You fed \(tamagochiData().getFoodData()[indexPath.row].name)")
        GameController.pet.modifySatiation(amount: tamagochiData().getFoodData()[indexPath.row].nutrition)
        updateProgressBar()
    }
    
    func updateProgressBar() {
        progressBar.setProgress(Float(GameController.pet.getSatiation())/100, animated: true)
    }
        
    
    
    
    
    
}
