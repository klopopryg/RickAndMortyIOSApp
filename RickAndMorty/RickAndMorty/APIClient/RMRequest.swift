//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Егор on 17.04.2026.
//

import Foundation

final class RMRequest {
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndPoint
    private let pathcCmponents: Set<String>
    private let queryParametrs: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathcCmponents.isEmpty {
            string += "/"
            pathcCmponents.forEach ({
                string += "\($0)"
            })
        }
        
        if !queryParametrs.isEmpty {
            string += "?"
            let argumentString = queryParametrs.compactMap ({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    init(endpoint: RMEndPoint, pathcCmponents: Set<String> = [], queryParametrs: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathcCmponents = pathcCmponents
        self.queryParametrs = queryParametrs
    }
}
