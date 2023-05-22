//
//  CatalogViewModel.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import Foundation

class CatalogViewModel: ObservableObject {
    
    ///singletone
    static let shared = CatalogViewModel()
    
    var popularProducts = [
        Product(id: "1",
                title: "Сметана Вай-Вай",
                imageUrl: "Not found",
                price: 900,
                description: "Свежая, домашняя сметана"),
        Product(id: "2",
                title: "Малина",
                imageUrl: "Not found",
                price: 2590,
                description: "Свежий урожай"),
        Product(id: "3",
                title: "Кукуруза",
                imageUrl: "Not found",
                price: 1500,
                description: """
Жаңа ғана дайындалған
Өте дәмді!

Только что сваренная
Очень вкусная!
"""),
        Product(id: "4",
                title: "Молоко",
                imageUrl: "Not found",
                price: 590,
                description: "Домашнее молоко"),
        Product(id: "5",
                title: "Кефир",
                imageUrl: "Not found",
                price: 640,
                description: "Домашний кефир")
    ]
    
    var bakery = [
        Product(id: "1",
                title: "Сметана Вай-Вай",
                imageUrl: "Not found",
                price: 900,
                description: "Свежая, домашняя сметана"),
        Product(id: "2",
                title: "Малина",
                imageUrl: "Not found",
                price: 2590,
                description: "Свежий урожай"),
        Product(id: "3",
                title: "Кукуруза",
                imageUrl: "Not found",
                price: 1500,
                description: "Только что сваренная"),
        Product(id: "4",
                title: "Молоко",
                imageUrl: "Not found",
                price: 590,
                description: "Домашнее молоко"),
        Product(id: "5",
                title: "Кефир",
                imageUrl: "Not found",
                price: 640,
                description: "Домашний кефир")
    ]
}
