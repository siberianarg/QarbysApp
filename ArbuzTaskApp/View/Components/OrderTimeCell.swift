//
//  OrderTimeCell.swift
//  ArbuzTaskApp
//
//  Created by siberianarg on 23.05.2023.
//

import SwiftUI

struct OrderTimeCell: View {
    
    var orderTime: OrderTime
    
    var body: some View {
        HStack {
            Text(orderTime.time)
        }.frame(width: screen.width * 0.4,
                height: screen.width * 0.1)
        .foregroundColor(.white)
        .background(.green)
        .cornerRadius(12)
    }
}

struct OrderTimeCell_Previews: PreviewProvider {
    static var previews: some View {
        OrderTimeCell(orderTime: OrderTime(time: "19:00 - 21:00"))
    }
}
