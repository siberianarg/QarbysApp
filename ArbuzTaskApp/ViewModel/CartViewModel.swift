//
//  CartViewModel.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 22.05.2023.
//

import Foundation

class CartViewModel: ObservableObject {
    
    @Published var positions = [Position]()
    
    func addPosotion(_ position: Position) {
        self.positions.append(position)
    }
}
