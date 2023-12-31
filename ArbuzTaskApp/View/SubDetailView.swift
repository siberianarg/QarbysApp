//
//  SubDetailView.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 23.05.2023.
//

import SwiftUI

struct SubDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let layoutForPopular = [GridItem(.adaptive(minimum: screen.width/2.2))]
    
    var body: some View {
        VStack {
            Section("Оформление заказа") {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Адресс доставки")
                                .bold()
                            Text("Almaty city, Zharokova st., h.233, apt.17 ")
                        }
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Дата доставки")
                                .bold()
                            Text("Сегодня")
                        }
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Время доставки")
                                .bold()

                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHGrid(rows: layoutForPopular, spacing: 12) {
                                    ForEach(OrderTimeViewModel.shared.times, id: \.time) { item in
                                        OrderTimeCell(orderTime: item)
                                    }
                                }.padding()
                            }
                        }
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Контактная информация")
                                .bold()
                            Text("Галымжан")
                            Text("Позвонить за час до доставки")
                        }
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Оплата")
                                .bold()
                            HStack {
                                Image(systemName: "creditcard")
                                Text("Онлайн банковской картой")
                            }
                        }
                    }
                }
                
                VStack {
                    Button {
                        print("Подписка успешно выполнена!") //Alert
                        presentationMode.wrappedValue.dismiss()
                        //и возврат на профиль со статусом заказа
                    } label: {
                        Text("Подписаться на еженедельную доставку")
                            .padding()
                            .padding(.horizontal, screen.width/10.5)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(12)
                    }
                }
            }
        }.padding()
    }
}


struct SubDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SubDetailView()
    }
}
