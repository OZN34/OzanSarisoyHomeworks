//
//  Sise.swift
//  BottleWARR
//
//  Created by Ozan Sarisoy on 30.06.2021.
//

import SpriteKit

enum SiseTipi : String {
    case Sise1
    case Sise2
}

class Sise : SKSpriteNode {
    
    let tipi : SiseTipi
    let degeri : Int
    
    init(tipi : SiseTipi) {
        self.tipi = tipi
        switch tipi {
        case .Sise1 :
            degeri = 50
            break
        case .Sise2 :
            degeri = 25
            break
        default:
            break
        }
        let texture = SKTexture(imageNamed: tipi.rawValue)
        super.init(texture: texture, color: .clear, size: .zero)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bodyOlustur() {
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.isDynamic = false
        
        physicsBody?.categoryBitMask = PhysicCategories.sise
        physicsBody?.contactTestBitMask = PhysicCategories.tumu
        physicsBody?.collisionBitMask = PhysicCategories.bos
    }
    // Sise carpisma fonksiyonu yaptım hangi siseye carparsa silsin,puan versin.
    func carpisma() -> Int {
        removeFromParent()
        return degeri
    }
}
