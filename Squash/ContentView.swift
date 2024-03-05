//
//  ContentView.swift
//  Squash
//
//  Created by Anton Godunov on 05.03.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        TabView {
            GameView(player1: Player(name: "Player1", color: Color.red), player2: Player(name: "Player2", color: Color.blue))
                .tabItem { Label("Game", systemImage: "figure.squash")
                    }
            Button("Undo") {
                Void.self
            }
            .tabItem { Label("Undo", systemImage: "arrow.uturn.backward")}
                             
            ResultView()
                .tabItem() {
                    Image(systemName: "list.clipboard")
                    Text("Result")
                }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .white
        }
    }

}

#Preview {
    ContentView()
//        .modelContainer(for: Item.self, inMemory: true)
}
