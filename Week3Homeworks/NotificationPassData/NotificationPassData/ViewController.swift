//
//  ViewController.swift
//  NotificationPassData
//
//  Created by Ozan Sarisoy on 4.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        let controller = storyboard?.instantiateViewController(identifier: "SecondVC") as! ViewController2
        controller.text = textField.text
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
       
        
    }
}
