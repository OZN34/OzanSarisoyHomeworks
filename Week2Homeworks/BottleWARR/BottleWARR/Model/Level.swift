//
//  Level.swift
//  BottleWARR
//
//  Created by Ozan Sarisoy on 30.06.2021.
//

import Foundation

struct Level {
    let rocks : [String]
    
    init?(level : Int) {
        guard let levellerSozluk = Leveller.levellerSozluk["Level\(level)"] as? [String: Any] else {return nil}
        
        guard let rocks = levellerSozluk["Rocks"] as? [String] else {return nil}
        self.rocks = rocks
    }
    
}
