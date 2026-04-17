//
//  RMService.swift
//  RickAndMorty
//
//  Created by Егор on 17.04.2026.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {}
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
