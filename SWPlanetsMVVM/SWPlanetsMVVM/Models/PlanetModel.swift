//
//  PlanetModel.swift
//  SWPlanetsMVVM
//
//  Created by Sean Murphy on 8/11/23.
//

import Foundation

struct PlanetModel: Codable {
    let results: [Results]
}

struct Results: Codable, Identifiable {
    let id = UUID()
    let name: String
    let rotationPeriod: String
    let orbitalPeriod: String
    let diameter: String
    let climate: String
    let gravity: String
    let terrain: String
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case rotationPeriod = "rotation_period"
        case orbitalPeriod = "orbital_period"
        case diameter, climate, gravity, terrain
    }
}
