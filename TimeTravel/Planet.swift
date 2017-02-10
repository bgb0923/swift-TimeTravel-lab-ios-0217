//
//  Planet.swift
//  TimeTravel
//
//  Created by William Brancato on 2/10/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

enum Planet {
    
    var hasLife : Bool { return self == .earth || self == .mars }
    var weather : Weather {
        switch self {
        case .mercury:
            return .superDuperHot
        case .venus:
            return .superDuperHot
        case .earth:
            return .warm
        case .mars:
            return .cold
        case .jupiter:
            return .cold
        case .saturn:
            return .cold
        case .uranus:
            return .cold
        case .neptune:
            return .cold
        }
    }
    
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
}
