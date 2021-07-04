//
//  SchemeViewController.swift
//  Dicegame
//
//  Created by user199453 on 6/6/21.
//

import UIKit

class SchemeViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    
    var nameText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sumbitbutton(_ sender: Any) {
    self.nameText = nameTextField.text!
    performSegue(withIdentifier: "ourname", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let vc = segue.destination as! DiceViewController
       vc.finalName = self.nameText
   }
    
}
