//
//  Rock.swift
//  BottleWARR
//
//  Created by Ozan Sarisoy on 28.06.2021.
//

import Foundation
import SpriteKit
enum RockTipi : String {
    case Gri
    case Mavi
    case Sari
    case Kirmizi
}

class Rock : SKSpriteNode {
    
    let rockTipi : RockTipi
    var secildiMi : Bool = false
    var ucuyorMu : Bool = false {
        didSet {
            if ucuyorMu {
                physicsBody?.isDynamic = true
                ucusAnimasyonu(aktif: true)
            } else {
                ucusAnimasyonu(aktif: false)
            }
        }
    }
    
    let ucusKareleri : [SKTexture]
    init(rockTipi : RockTipi) {
        self.rockTipi = rockTipi
        ucusKareleri = AnimationOption.loadtexture(atlas: SKTextureAtlas(named: rockTipi.rawValue), adi: rockTipi.rawValue)
        let texture = SKTexture(imageNamed: rockTipi.rawValue+"1")
        super.init(texture: texture, color: .clear, size: texture.size())
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError(" Hata")
    }
    
    func ucusAnimasyonu(aktif : Bool) {
        if aktif {
            
            run(SKAction.repeatForever(SKAction.animate(with: ucusKareleri, timePerFrame: 0.1, resize: true, restore: true)))
        } else {
            removeAllActions()
        }
    }
    
}
