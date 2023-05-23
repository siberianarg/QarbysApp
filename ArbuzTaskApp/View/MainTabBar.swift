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
                }
            }
            CartView(viewModel: CartViewModel.shared)
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                    }
                }
            InfoView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.circle")
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
