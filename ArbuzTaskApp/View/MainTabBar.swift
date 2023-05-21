//
//  MainTabBar.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        
        TabView {
            
            NavigationView {
                CatalogView()
            }
            
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet.circle")
                        Text("Продукты")
                    }
                }
            
            CartView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                }
            SubsView()
                .tabItem {
                    VStack {
                        Image(systemName: "pencil.circle")
                        Text("Подписка")
                    }
                }
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
