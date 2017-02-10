//
//  Speed.swift
//  TimeTravel
//
//  Created by William Brancato on 2/9/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

enum Speed : Double {
    
    var isLightSpeed : Bool { return self == .lightspeed }
    
    case none = 0
    case slow = 50
    case medium = 150
    case fast = 1000
    case lightspeed = 1_000_000
    
    init(spaceSpeed: Double) {
        
        switch spaceSpeed {
        case 0:
            self = .none
        case 1...149:
            self = .slow
        case 150...999:
            self = .medium
        case 1_000...999_999:
            self = .fast
        default:
            self = .lightspeed
        }
    }
    
    func isFaster(than speed: Speed) -> Bool { return self.rawValue > speed.rawValue }
    
}
