//
//  RainbowGameView.swift
//  WorddicApp
//
//  Created by theshamuel on 01/11/2023.
//  Copyright © 2023 tuist.io. All rights reserved.
//

import SwiftUI

struct RainbowGameView: View {
    
    @State private var selectedColor: Color = .blue
    
    private let colors: [Color] = [.red, .yellow, .orange, .purple, .blue, .indigo, .green, .black, .white]
    
    var body: some View {

        ZStack {
            //fon
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                
                HStack {
                    
                    Button(action: {}) {
                        Image(systemName: "arrowshape.backward")
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "gearshape")
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                            .foregroundColor(.black)
                    }
                }
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
                Spacer()
                
                Circle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(selectedColor)
                
                Spacer()
                
                HStack{
                    Button(action: {}) {
                        HStack {
                            Image("orangeButton")
                                .resizable()
                                .frame(width: 150.0, height: 80.0)
                                .overlay(
                                    Image(systemName: "arrow.clockwise")
                                        .foregroundColor(.white)
                                        .font(.system(size: 36))
                                        //.fontWeight(.heavy)
                                    , alignment: .center
                                )
                        }
                    }
                }
            }
            
            .padding()
        }
    }
}

#Preview {
    RainbowGameView()
}
