//
//  Order.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 22.05.2023.
//

import Foundation
import FirebaseFirestore

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
    
    var representation: [String: Any] {
        
        
        var repres = [String: Any]()
        repres["id"] = id
        repres["date"] = date
        repres["status"] = status
        return repres
    }
}
