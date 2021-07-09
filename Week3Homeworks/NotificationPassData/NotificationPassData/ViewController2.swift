//
//  ViewController2.swift
//  NotificationPassData
//
//  Created by Ozan Sarisoy on 4.07.2021.
//

import UIKit

class ViewController2: ViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
            
                if text != nil {
                    label.text = text
                    
                    func shake(view: UIView, for duration: TimeInterval = 0.5, withTranslation translation: CGFloat = 10) {
                        let propertyAnimator = UIViewPropertyAnimator(duration: duration, dampingRatio: 0.3) {
                            view.transform = CGAffineTransform(translationX: translation, y: 0)
                        }

                        propertyAnimator.addAnimations({
                            view.transform = CGAffineTransform(translationX: 0, y: 0)
                        }, delayFactor: 0.2)

                        propertyAnimator.startAnimation()
                    }
                    
                }
        
    }
    
}
