//
//  Position.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 22.05.2023.
//

import Foundation

struct Position: Identifiable {
    
    var id: String
    var product: Product
    var count: Int
    var cost: Int {
        return product.price * self.count
    }
}
