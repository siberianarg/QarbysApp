//
//  ProductCell.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI

struct ProductCell: View {
    
    var product: Product
    
    var body: some View {
        VStack(spacing: 5) {
            Image("sourСream")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.45)
                .clipped()
                .cornerRadius(12)
            
            HStack {
                Text(product.title)
                    .font(.custom("AvenirNext-regular", size: 12))
                Spacer()
                Text("\(product.price) ₸")
                    .font(.custom("AvenirNext-bold", size: 12))
            }
            .padding(.horizontal, 1)
            .padding(.bottom,5)
        }.frame(width: screen.width * 0.45,
                height: screen.width * 0.5)
        .background(.white)
        .cornerRadius(12)
        .shadow(radius: 0)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "1",
                                     title: "Сметана Вай-Вай",
                                     imageUrl: "Not found",
                                     price: 900,
                                     description: "Свежая, домашняя сметана"))
    }
}
