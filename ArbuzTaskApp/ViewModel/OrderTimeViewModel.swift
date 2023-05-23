//
//  OrderTimeViewModel.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 23.05.2023.
//

import Foundation

class OrderTimeViewModel: ObservableObject {
    
    static let shared = OrderTimeViewModel()
    
    var times = [
    OrderTime(time: "19:00 - 21:00"),
    OrderTime(time: "20:00 - 22:00"),
    OrderTime(time: "21:00 - 23:00"),
    OrderTime(time: "22:00 - 00:00"),
    OrderTime(time: "07:00 - 09:00"),
    OrderTime(time: "08:00 - 10:00"),
    OrderTime(time: "09:00 - 11:00"),
    ]
}
