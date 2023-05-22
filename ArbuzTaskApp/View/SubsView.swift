//
//  SubsView.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI

struct SubsView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    VStack {
                        Button {
                            print("Подписка успешно выполнена!")
                        } label: {
                            Text("Подписаться на еженедельную доставку")
                                .padding()
                                .padding(.horizontal, screen.width/10.5)
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(12)
                        }
                    }
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
                        Text("14:00 - 18:00")
                    }
                    Spacer()
//                    //Таблица с заказами, подписками
//                    List {
//                        Text("Ваш заказ ")
//                    }.listStyle(.plain)
                    
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
            VStack(alignment: .center) {
                Button {
                    print("Заказ подтвержден!")
                } label: {
                    Text("Подтвердить заказ")
                        .padding(.vertical,screen.height/30)
                        .padding(.horizontal, screen.width/3.5)
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(0)
                }
            }
        }
    }
}

struct SubsView_Previews: PreviewProvider {
    static var previews: some View {
        SubsView()
    }
}
