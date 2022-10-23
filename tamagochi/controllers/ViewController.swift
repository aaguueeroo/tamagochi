//
//  ViewController.swift
//  tamagochi
//
//  Created by Julia Parker on 9/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var weigthLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var forkImage: UIImageView!
    @IBOutlet weak var lightbulbImage: UIImageView!
    @IBOutlet weak var balloonsImage: UIImageView!
    @IBOutlet weak var heartImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = GameController.pet.getName()
        weigthLabel.text = "Weight: \(GameController.pet.getWeight()) kg"
        heightLabel.text = "Height: \(GameController.pet.getHeight()) cm"
        moneyLabel.text = String(GameController.getMoney())
        
    }

    @IBAction func onTapFood(_ sender: Any) {
    }
    @IBAction func onTapSleep(_ sender: Any) {
    }
    @IBAction func onTapPlay(_ sender: Any) {
    }
    @IBAction func onTapHeal(_ sender: Any) {
    }

}

