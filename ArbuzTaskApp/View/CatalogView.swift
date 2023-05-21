//
//  CatalogView.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI

struct CatalogView: View {
    
    let layout = [GridItem(.adaptive(minimum: screen.width/2.5))]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            Section("Популярное") {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layout, spacing: 10) {
                        ForEach(CatalogViewModel.shared.popularProducts, id: \.id) { item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundColor(.black)
                            }

                            
                        }
                    }.padding()
                }
            }

            Section("Выпечка") {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layout, spacing: 10) {
                        ForEach(CatalogViewModel.shared.bakery, id: \.id) { item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundColor(.black)
                            }
                        }
                    }.padding()
                }
            }
        }.navigationTitle("Продукты")
    }
}

