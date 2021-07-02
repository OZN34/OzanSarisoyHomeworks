//
//  AnimasyonAyarlari.swift
//  BottleWARR
//
//  Created by Ozan Sarisoy on 1.07.2021.
//

import SpriteKit

class AnimationOption {
    
    static func loadtexture(atlas : SKTextureAtlas, adi : String) -> [SKTexture] {
        
        var textures = [SKTexture]()
        
        for i in 1...atlas.textureNames.count {
            let textureAdi = adi + String(i)
            textures.append(atlas.textureNamed(textureAdi))
        }
        
        return textures
        
    }
    
}
