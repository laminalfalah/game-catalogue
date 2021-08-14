//
//  Response.swift
//  Game Catalogue
//
//  Created by Laminal Falah on 12/08/21.
//

import Foundation

struct Response<T: Decodable> {
    let code: Int
    let message: String
    let data: T
}
