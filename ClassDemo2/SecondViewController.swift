//
//  SecondViewController.swift
//  ClassDemo2
//
//  Created by Joe Miller on 7/19/22.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var textField2: UITextField!
    
    var delegate:UIViewController!
    var vc2NewName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel2.text = vc2NewName
        
    }
    

    @IBAction func button2Pressed(_ sender: Any) {
        
        let otherVC = delegate as! ViewController
        otherVC.changeText(name: textField2.text!)
        self.dismiss(animated: true)
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
