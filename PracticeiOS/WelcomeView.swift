//
//  WelcomeView.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 14/06/2026.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome_bg")
                .resizable()
                .scaledToFill()
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
