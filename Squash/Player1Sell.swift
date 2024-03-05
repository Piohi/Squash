//
//  Player1Sell.swift
//  Squash
//
//  Created by Anton Godunov on 05.03.2024.
//

import SwiftUI

struct Player1Sell: View {
    
    var name: String
    var color: Color
    
    var body: some View {
        
        ZStack(alignment:.center) {
            color
            
            Text(name)
                .foregroundStyle(.black)
            
                
        }.frame(width: 150, height: 100)
            
    }
}

#Preview {
    Player1Sell(name: "Player", color: .red)
}
