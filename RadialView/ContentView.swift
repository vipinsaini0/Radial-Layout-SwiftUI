//
//  ContentView.swift
//  RadialView
//
//  Created by Vipin Saini on 29-07-2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Home()
                .navigationTitle("Radial Layout")
        }
    }
}

#Preview {
    ContentView()
}
