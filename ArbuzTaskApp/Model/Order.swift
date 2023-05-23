//
//  Order.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 23.05.2023.
//

import Foundation

struct Order {
    
    var id: String = UUID().uuidString
    var positions = [Position]()
    var date: Date
    var status: String
    
    var cost: Int {
        var sum = 0
        for position in positions {
            sum += position.cost
        }
        return sum
    }
}
