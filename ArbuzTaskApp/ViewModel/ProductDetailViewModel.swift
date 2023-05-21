//
//  ProductDetailViewModel.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import Foundation


class ProductDetailViewModel: ObservableObject {
    
    ///публикуемое свойство
    @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
}
