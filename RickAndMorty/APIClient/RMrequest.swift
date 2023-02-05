//
//  RMrequest.swift
//  RickAndMorty
//
//  Created by Bruno Ias on 05/02/23.
//

import Foundation

final class RMrequest{
    
    private struct Constans {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private  let endpoint :RMEndpoint
    
    private  let pathComponents : [String]
    
    private let queryParamters : [URLQueryItem]
    
    private var urlString : String {
        var string = Constans.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParamters.isEmpty{
            string += "?"
            let argumentString = queryParamters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
        }
        
        return string
    }
    
    public var url:URL? {
        return URL(string: urlString)
    }
    
    init(endpoint: RMEndpoint, pathComponents: [String], queryParamters: [URLQueryItem]) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParamters = queryParamters
    }
    
}
