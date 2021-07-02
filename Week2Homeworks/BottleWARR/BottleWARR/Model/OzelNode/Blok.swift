//
//  Blok.swift
//  BottleWARR
//
//  Created by Ozan Sarisoy on 29.06.2021.
//

import Foundation
import SpriteKit


class Blok : SKSpriteNode {
    
    let tipi : BlokTipi
    var cani : Int
    let hasarDegeri : Int
    
    init(tipi : BlokTipi) {
        self.tipi = tipi
        
        
        switch tipi {
        case .Cam :
            cani = 70
            break
        case .Tahta:
            cani = 150
            break
        case .Tas :
            cani = 250
            break
        }
        
        hasarDegeri = (2 * cani) / 5
        
        let texture = SKTexture(imageNamed: tipi.rawValue.lowercased())
        super.init(texture: texture, color: .clear, size: .zero)
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Hata")
    }
    
    func bodyOlustur() {
        
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.isDynamic = true
        physicsBody?.categoryBitMask = PhysicCategories.blok
        physicsBody?.contactTestBitMask = PhysicCategories.tumu
        physicsBody?.collisionBitMask = PhysicCategories.tumu
        
        
    }
    
    
    func carpisma(guc : Int)  {
        cani -= guc
        if cani <= 0 {
            removeFromParent()
        } else if cani < hasarDegeri {
            
            let kirikBlok = SKTexture(imageNamed: tipi.rawValue.lowercased()+"Kirik")
            texture = kirikBlok
        }
    }
    
}


enum BlokTipi : String {
    case Tas
    case Cam
    case Tahta
}
