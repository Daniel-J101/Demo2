//
//  ViewController.swift
//  ClassDemo2
//
//  Created by Joe Miller on 7/19/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var nameLabel1: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel1.text = "undefined"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueIdentifier",
           let nextVC = segue.destination as? SecondViewController {
            nextVC.delegate = self
            nextVC.vc2NewName = textField1.text!
        }
    }
    
    func changeText(name newName:String) {
        nameLabel1.text = newName
    }
    


}

