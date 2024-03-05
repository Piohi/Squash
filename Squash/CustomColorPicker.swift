//
//  CustomColorPicker.swift
//  Squash
//
//  Created by Anton Godunov on 05.03.2024.
//

import SwiftUI

struct CustomColorPicker: View {
    @Binding var selectedColor: Color
//    @Binding var name: String
    private let colors: [Color] = [.red, .yellow, .blue, .green, .mint, .cyan, .brown, .gray]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach( colors, id: \.self) { color in
                    Circle()
                        .foregroundColor(color)
                        .frame(width: 45)
                        .opacity(color == selectedColor ? 1.0 : 0.8)
                        .scaleEffect(color == selectedColor ? 1.2 : 1.0)
                        .onTapGesture {
                            selectedColor = color
                        }
                }
            }
            .padding()
        }
        
    }
}

//#Preview {
//    CustomColorPicker(selectedColor: .constant(.blue))
//}
