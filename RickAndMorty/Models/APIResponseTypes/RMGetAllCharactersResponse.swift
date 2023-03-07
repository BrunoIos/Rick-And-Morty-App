//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Bruno Ias on 07/03/23.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: URL?
        let prev: URL?
    }
    
    let info: Info
    let results: [RMCharacter]
    
}
