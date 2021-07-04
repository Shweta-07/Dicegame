//
//  DiceViewController.swift
//  Dicegame
//
//  Created by user199453 on 6/3/21.
//
import UIKit

class DiceViewController: UIViewController {
    @IBOutlet var Diceimageview1: UIImageView!
    
    
    @IBOutlet var Diceimageview2: UIImageView!
    
    @IBOutlet var Dicescorelabel: UILabel!
    var score = 0
    var images = ["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]
    
    @IBOutlet var nameLabel: UILabel!
    
    var finalName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Hello \(finalName), Let's Start The Game"
    }
   
    
    @IBAction func Dicerollbutton(_ sender: Any) {
        let a = Int.random(in: 0...5)
        let b = Int.random(in: 0...5)
        Diceimageview1.image = UIImage(named: images[a])
        Diceimageview2.image = UIImage(named: images[b])
        score = a + 1 + b + 1
        Dicescorelabel.text = "Score : \(score)"
 
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
