//
//  Options.swift
//  BottleWARR
//
//  Created by Ozan Sarisoy on 28.06.2021.
//

import Foundation
import UIKit
// Binary daha mantıklı olabilir diye düşündüm.



struct ZPozisyon {
    static let arkaPlan : CGFloat = 0
    static let engeller : CGFloat = 1
    static let rock : CGFloat = 3
    
    static let oyunDisiArkaPlan : CGFloat = 10
    static let labelMenu : CGFloat = 11
}

struct PhysicCategories {
    static let bos : UInt32 = 0
    static let sise : UInt32 = 0
    static let tumu : UInt32 = .max
    static let kenar : UInt32 = 0x1
    static let rock : UInt32 = 0x1 << 1
    static let blok : UInt32 = 0x1 << 2
    static let dusman : UInt32 = 0x1 << 3
}

enum OyunDurumu {
    case Hazir
    case Ucuyor
    case Bitis
    case Dirilme
    case OyunBitti
}


struct Leveller {
    static var levellerSozluk = [String:Any]()
    
}
