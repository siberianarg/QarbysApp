//
//  PositionCell.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 22.05.2023.
//

import SwiftUI

struct PositionCell: View {
    
    let position: Position
    
    var body: some View {
        HStack {
            Text(position.product.title)
                .fontWeight(.bold)
            Spacer()
            Text("\(position.count) шт.")
            Text("\(position.cost) ₸")
                .frame(width: screen.width/4, alignment: .trailing)
        }.padding(.horizontal)
        
    }
}

struct PositionCell_Previews: PreviewProvider {
    static var previews: some View {
        PositionCell(
            position: Position(id: UUID().uuidString, product: Product(id: UUID().uuidString,
                                                                                title: "Кукуруза",
                                                                                imageUrl: "corn",
                                                                                price: 1500,
                                                                                description: "свежая"),
                                        count: 3)
        )
        
        
    }
}
