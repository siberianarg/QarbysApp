//
//  ProductDetailView.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    var product: Product
    
    var body: some View {
        Text("\(product.title)")
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(id: "1",
                                           title: "Сметана Вай-Вай",
                                           imageUrl: "Not found",
                                           price: 900,
                                           description: "Свежая, домашняя сметана"))
    }
}
