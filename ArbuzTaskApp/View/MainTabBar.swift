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
            CatalogView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet.circle")
                        //                        Text("First")
                    }
                }
            
            CartView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                    }
                }
            SubsView()
                .tabItem {
                    VStack {
                        Image(systemName: "pencil.circle")
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
