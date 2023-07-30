//
//  Home.swift
//  RadialView
//
//  Created by Vipin Saini on 29-07-2023.
//

import SwiftUI

struct Home: View {
    /// View Properties
    @State private var colors: [ColorValue] = [.red, .yellow, .green, .purple, .pink, .orange, .brown, .cyan, .indigo, .mint].compactMap { color -> ColorValue in
        return .init(color: color)
    }
    
    @State private var activeIndex: Int = 0
    
    var body: some View {
        GeometryReader(content: { geometry in
            VStack {
                Spacer(minLength: 0)
                RadialLayout(items: colors, id: \.id, spacing: 220) { colorValue, index, size in
                    Circle()
                        .fill(colorValue.color.gradient)
                        .overlay {
                            Text("\(index)")
                                .fontWeight(.semibold)
                        }
                } onIndexChange: { index in
                    activeIndex = index
                }
                .padding(.horizontal, -100)
                .frame(width: geometry.size.width, height: geometry.size.width / 2)
                .overlay {
                    Text("\(activeIndex)")
                }
            }
        })
    }
}

#Preview {
    ContentView()
}
