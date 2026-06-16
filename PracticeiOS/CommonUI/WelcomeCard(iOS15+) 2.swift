//
//  WelcomeCard.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 16/06/2026.
//

import SwiftUI

struct WelcomeCard2: View {
    // iOS 15 TabView selection uses a standard Int (not an optional Int?)
    @Binding var currentPage: Int
    
    var body: some View {
        TabView(selection: $currentPage) {
            ForEach(1...3, id: \.self) { index in
                VStack(spacing: 10) {
                    Text("Find Your Perfect Venue \(index)")
                        .foregroundColor(.white)
                        .font(.system(size: 36, weight: .medium, design: .serif))
                        .multilineTextAlignment(.center)
                    
                    Text("Discover banquet halls, cafés & event spaces across Kathmandu \(index)")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal, 60)
                .padding(.bottom, 40)
                // TabView automatically stretches each child to fit the screen width safely!
                .tag(index - 1) // 0-indexed tags match the currentPage state
            }
        }
        // This turns the TabView into a native, high-performance horizontal paging carousel
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        // Explicitly constrain the height so it doesn't push your WelcomeView buttons down
        .frame(height: 220)
    }
}

#Preview {
    WelcomeCard2(currentPage: .constant(0))
        .background(.blue)
    
}
