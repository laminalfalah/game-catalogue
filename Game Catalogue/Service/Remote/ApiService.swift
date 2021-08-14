//
//  ApiService.swift
//  Game Catalogue
//
//  Created by Laminal Falah on 12/08/21.
//

import Foundation

protocol ApiService {
    associatedtype T
    
    var property: T { set get }
    
    func findByAll() -> [T]
    
    func findById(_ id: String) -> T
}
