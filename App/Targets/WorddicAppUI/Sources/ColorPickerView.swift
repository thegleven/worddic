//
//  ColorPickerView.swift
//  WorddicApp
//
//  Created by theshamuel on 10/11/2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

struct ColorPickerView: View {
    
    let colors: [Color] = [.red, .yellow, .orange, .purple, .blue, .indigo, .green, .black, .white]
    @Binding var selectedColor: Color
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(colors, id: \.self) { color in
                    Circle()
                        .foregroundColor(color)
                        .frame(width: 45, height: 45)
                        .opacity(color == selectedColor ? 0.5 : 1.0)
                        .scaleEffect(color == selectedColor ? 1.1 : 1.0)
                        .onTapGesture {
                            selectedColor = color
                        }
                }
            }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(20)
            .padding(.horizontal)
        }
        
        
    }
}

#Preview {
    ColorPickerView(selectedColor: .constant(.blue))
}
