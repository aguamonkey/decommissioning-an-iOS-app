//
//  ContentView.swift
//  LegacyAppDecommissioner
//
//  Created by Joshua Browne on 01/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Legacy App Decommissioner")
                .font(.largeTitle)
                .padding()

            LegacyViewControllerWrapper()
                .frame(height: 300) // Adjust height as necessary
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
