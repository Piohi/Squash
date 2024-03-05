//
//  SettingView.swift
//  Squash
//
//  Created by Anton Godunov on 05.03.2024.
//

import SwiftUI

struct SettingView: View {
    @Binding var selectedColor: Color
    @Binding var name: String
    var body: some View {
        VStack(alignment: .center) {
            CustomColorPicker(selectedColor: $selectedColor)
            ZStack(alignment: .center) {
                selectedColor
                    .ignoresSafeArea()
//                Circle()
//                    .frame(width: 200)
//                    .foregroundStyle(selectedColor)
                TextField("Name", text: $name)
                    .padding()
                    .frame(height: 48)
                    .padding(.horizontal)
//                    .tint(.black)
                    .background(Material.thin)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.words)
                    .padding()
                
                
            }
        }.toolbar(.automatic, for: .tabBar)
    }
}

//#Preview {
//    SettingView()
//}
