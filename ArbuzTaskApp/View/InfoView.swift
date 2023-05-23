//
//  SubsView.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    
                    List {
                        Text("Ваш заказ ")
                    }.listStyle(.plain)
                        .padding()
                        .frame(width: screen.width * 0.8)
                    Spacer()
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Статус заказа - оплачен")
                            .bold()
                        Text("Номер заказа 257А")
                        
                    }
                }
            }
            VStack {
                Button {
                    print("Вышел!")
                } label: {
                    Text("Выход")
                        .padding()
                        .padding(.horizontal, screen.width/3.5)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(12)
                        .padding()
                }
            }
        }
    }
}

struct SubsView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
