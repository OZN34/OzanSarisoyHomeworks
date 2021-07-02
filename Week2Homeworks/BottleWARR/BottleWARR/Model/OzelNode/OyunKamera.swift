//
//  OyunKamera.swift
//  BottleWARR
//
//  Created by Ozan Sarisoy on 28.06.2021.
//

import UIKit
import SpriteKit

class OyunKamera: SKCameraNode {
    
    
    func sinirlariBelirle(sahne: SKScene, frame: CGRect, node: SKNode?) {
        
        let olcekliBoyut = CGSize(width: sahne.size.width * xScale, height: sahne.size.height * yScale)
        
        let sinirCercevesi = frame
        
        let xDis = min(olcekliBoyut.width/2, sinirCercevesi.width/2)
        let yDis = min(olcekliBoyut.height/2, sinirCercevesi.height/2)
        
        let kameraCerceve = sinirCercevesi.insetBy(dx: xDis, dy: yDis)
        
        let kameraXAralik = SKRange(lowerLimit: kameraCerceve.minX, upperLimit: kameraCerceve.maxX)
        let kameraYAralik = SKRange(lowerLimit: kameraCerceve.minY, upperLimit: kameraCerceve.maxY)
        
        let kenarConstraint = SKConstraint.positionX(kameraXAralik, y: kameraYAralik)
        
        if let node = node {
            let sifir = SKRange(constantValue: 0)
            let konumConstraint = SKConstraint.distance(sifir, to: node)
            constraints = [konumConstraint,kenarConstraint]
        } else {
        
            constraints = [kenarConstraint]
        }
    }

}
