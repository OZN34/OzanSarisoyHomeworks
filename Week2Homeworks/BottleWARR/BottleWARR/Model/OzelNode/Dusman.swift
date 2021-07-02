//
//  Dusman.swift
//  BottleWARR
//
//  Created by Ozan Sarisoy on 1.07.2021.
//

import SpriteKit




enum DusmanTipi : String {
    
   case KirmiziDusman
    case YesilDusman
    
}

class Dusman : SKSpriteNode {
    
    let dusmanTipi : DusmanTipi
    var canDegeri : Int
    var esikCanDegeri : Int?
    let animasyonKareleri : [SKTexture]?
    
    init(dusmanTipi : DusmanTipi) {
        
        self.dusmanTipi = dusmanTipi
        
        switch dusmanTipi {
       case .KirmiziDusman:
            canDegeri = 180
            animasyonKareleri = AnimationOption.loadtexture(atlas: SKTextureAtlas(named: dusmanTipi.rawValue), adi: dusmanTipi.rawValue)
            esikCanDegeri = nil
            break
        case .YesilDusman :
            canDegeri = 150
            esikCanDegeri = canDegeri / 2
            animasyonKareleri = nil
            break
        }
        
        let texture = SKTexture(imageNamed:  dusmanTipi.rawValue + "1")
        super.init(texture: texture, color: .clear, size: .zero )
        animasyonKazandir()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func carpisma(guc : Int) -> Bool {
        
        if canDegeri < 0 {
            return false
        }
        
        canDegeri -= guc
        
        if canDegeri <= 0 {
            removeAllActions()
            let yokOlma = SKTexture(imageNamed: "yokOlma")
            texture = yokOlma
            // Belirli bir süre sonra çalıştırılmak istenilen kodlar buraya aktarılır.
            DispatchQueue.main.asyncAfter(deadline: .now()+0.7, execute: {
                self.removeFromParent()
            })
            
            return true
        }
        
        if let esikCanDegeri = esikCanDegeri , canDegeri <= esikCanDegeri {
            let yaraliDusmanTexture = SKTexture(imageNamed: dusmanTipi.rawValue+"Yarali")
            texture = yaraliDusmanTexture
        }
        return false
    }
    
    func olusturBody()  {
        
        physicsBody = SKPhysicsBody(rectangleOf:  size)
        
        physicsBody?.isDynamic = true
        
        physicsBody?.categoryBitMask = PhysicCategories.dusman
        
        physicsBody?.contactTestBitMask = PhysicCategories.tumu
        
        physicsBody?.collisionBitMask = PhysicCategories.tumu
    }
    
    func animasyonKazandir() {
        
        if let animasyonKareleri = animasyonKareleri{
            run(SKAction.repeatForever(SKAction.animate(with: animasyonKareleri, timePerFrame: 0.3, resize: false, restore: true)))
        }
    }
    
}



