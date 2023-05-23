//
//  CartView.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI

struct CartView: View {
    
    @StateObject  var viewModel: CartViewModel
    
    @State private var isSubDetailViewShow = false
    
    var body: some View {
        
        VStack {
            List(viewModel.positions) { position in
                PositionCell(position: position)
                    .swipeActions {
                        Button {
                            viewModel.positions.removeAll { pos in
                                pos.id == position.id
                            }
                        } label: {
                            Text("Удалить")
                        }.tint(.red)
                    }
            }
            .listStyle(.plain)
            .navigationTitle("Корзина")

            HStack {
                Text("Итого:")
                    .fontWeight(.bold)
                Spacer()
                Text("\(self.viewModel.cost) ₸")
                    .fontWeight(.bold)
            }.padding()
            
            HStack {
                Button {
                    print("Отменить")
                } label: {
                    Text("Отменить")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(12)
                }
                Button {
                    var order = Order(date: Date(),
                                      status: OrderStatus.paid.rawValue)
                    print("\(order)")
                    order.positions = self.viewModel.positions
                    isSubDetailViewShow.toggle()
                } label: {
                    Text("Заказать")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(12)
                }
            }.padding()
        }
        .fullScreenCover(isPresented: $isSubDetailViewShow) {
            SubDetailView()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewModel: CartViewModel.shared )
    }
}
