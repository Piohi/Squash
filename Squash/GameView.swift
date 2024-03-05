//
//  GameView.swift
//  Squash
//
//  Created by Anton Godunov on 05.03.2024.
//

import SwiftUI

struct GameView: View {
    @State var player1: Player
    @State var player2: Player
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    
                    NavigationLink {
                        SettingView(selectedColor: $player1.color, name: $player1.name)
                    } label: {
                        Player1Sell(name: player1.name, color: player1.color)
                            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                    }
                    Player1Sell(name: player2.name, color: player2.color)
                }
                .padding()
                Spacer()
            }
            
           
            
        }
        
        
        
    }
}

//#Preview {
//    GameView(player1: Binding<Player>, player2: Binding<Player>)
//}
