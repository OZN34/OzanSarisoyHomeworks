//
//  Extensions.swift
//  BottleWARR
//
//  Created by Ozan Sarisoy on 28.06.2021.
//

import Foundation
import CoreGraphics
import SpriteKit

// Çarpma işlemini aşırı yükleme yaptım. Float tipiyle double tipini aşmam gerekiyordu. GameSecendeki let hareket kısmında

// Toplama ve çıkarma işleminide aşırı yükleme yaptım. Kod sadeleştirme yapmak istedim delta konum hesaplaması için

extension CGPoint {
    
    static public func + (sol: CGPoint, sag : CGPoint) -> CGPoint {
        return CGPoint (x: sol.x+sag.x, y: sol.y+sag.y)
    }
    
    static public func - (sol: CGPoint, sag : CGPoint) -> CGPoint {
        return CGPoint(x: sol.x-sag.x, y: sol.y-sag.y)
    }
    
    
    static public func * (sol : CGPoint, sag: CGFloat) -> CGPoint {
        return CGPoint(x: sol.x * sag, y: sol.y * sag)
    }
}

extension SKNode {
    
    func olceklendir(boyut: CGSize, genislik : Bool , oran : CGFloat)  {
        
        let olcek = genislik ? (boyut.width * oran) / self.frame.size.width : (boyut.height*oran) /
            (self.frame.size.height)
        self.setScale(olcek)
    }
}
