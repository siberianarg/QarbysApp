//
//  CartView.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 21.05.2023.
//

import SwiftUI

struct CartView: View {
    
    var viewModel: CartViewModel
    var body: some View {
        Text("Корзина")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewModel: CartViewModel())
    }
}
