//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Егор on 16.04.2026.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
    
}
