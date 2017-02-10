//
//  SpaceShip.swift
//  TimeTravel
//
//  Created by William Brancato on 2/10/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    
    let name : String
    let speed : Speed = .none
    var currentPlanet : Planet
    
//    var timeTravel : Bool { return speed.isLightSpeed }
    
    var description : String { return "Holy Shit did you see those things?  If we don't get off of \(currentPlanet) we are all doomed!" }
    
    init(name: String, currentPlanet : Planet) {
        self.name = name
        self.currentPlanet = currentPlanet
    }
    
    func timeTravel() -> Bool { return speed.isLightSpeed }
    func isFaster(than spaceShip: SpaceShip) -> Bool { return self.speed.rawValue > spaceShip.speed.rawValue }
    
    func travel(to planet: Planet) -> Bool {
        switch planet {
        case .mercury: return false
        case .venus where self.speed == .fast: currentPlanet = planet; return true
        case .earth where self.speed == .fast: currentPlanet = planet; return true
        case .mars where self.speed == .lightspeed: currentPlanet = planet; return true
        case .jupiter where self.speed == .slow: currentPlanet = planet; return true
        case .saturn where self.speed == .medium: currentPlanet = planet; return true
        case .uranus where self.speed == .slow: currentPlanet = planet; return true
        case .neptune where self.speed == .fast: currentPlanet = planet; return true
        case .neptune where self.speed == .lightspeed: currentPlanet = .mars; return false
        case .venus where self.speed == .lightspeed: currentPlanet = .mars; return false
        default: return false
        }
    }
}
