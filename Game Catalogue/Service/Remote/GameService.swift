//
//  GameService.swift
//  Game Catalogue
//
//  Created by Laminal Falah on 12/08/21.
//

import Foundation

class GameService: ApiService {
    var property: Game = Game()
    
    func findByAll() -> [Game] {
        return []
    }
    
    func findById(_ id: String) -> Game {
        return Game()
    }
    
}
