//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Bruno Ias on 01/02/23.
//

import Foundation

struct RMSingleLocation: Codable{
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
