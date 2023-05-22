//
//  CartViewModel.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 22.05.2023.
//

import Foundation

class CartViewModel: ObservableObject {
    
    ///singleton
    static let shared = CartViewModel()
    
    private init()  { }
    
    @Published var positions = [Position]()
    
    var cost: Int {
        var sum = 0
        for pos in positions {
            sum += pos.cost
        }
        return sum
    }
    
    func addPosotion(_ position: Position) {
        self.positions.append(position)
    }
}
