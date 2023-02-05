//
//  RMendpoint.swift
//  RickAndMorty
//
//  Created by Bruno Ias on 05/02/23.
//

import Foundation

  @frozen enum RMEndpoint: String, Codable{
    case character = "character"
    case location = "location"
    case episode = "episode"
}
