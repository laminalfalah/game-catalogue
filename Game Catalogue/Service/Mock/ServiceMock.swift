//
//  ServiceMock.swift
//  Game Catalogue
//
//  Created by Laminal Falah on 12/08/21.
//

import Foundation
import Combine

final class ServiceMock: ObservableObject {
    @Published var games: [Game] = load("game.json")
    
    @Published var developer: [Developer] = load("developer.json")
    
    @Published var creator: [Creator] = load("creator.json")
    
    @Published var profile: Profile = load("profile.json")
}

fileprivate func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Couldn't find \(fileName) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
}
