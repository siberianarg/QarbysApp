//
//  ProductDetailView.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    var viewModel: ProductDetailViewModel
    
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                Image("corn")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: screen.height/3)
                HStack {
                    Text("\(viewModel.product.title)")
                        .font(.title2.bold())
                    Spacer()
                    Text("\(viewModel.product.price) ₸")
                        .font(.title2)
                }.padding(.horizontal)
                Text("\(viewModel.product.description)")
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                Spacer()
            }
            Button {
                print("Добавить в корзину")
            } label: {
                Text("В корзину!")
                    .padding()
                    .padding(.horizontal, screen.width/3.5)
                    .foregroundColor(Color(.systemGray6))
                    .background(Color(.systemGreen))
                    .cornerRadius(16)
                    .padding()
            }
            Spacer()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(viewModel: ProductDetailViewModel(product: Product(
            id: "1",
            title: "Сметана Вай-Вай",
            imageUrl: "Not found",
            price: 900,
            description: "Свежая, домашняя сметана")))
    }
}
