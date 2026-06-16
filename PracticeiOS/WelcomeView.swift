//
//  WelcomeView.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 14/06/2026.
//

import SwiftUI

struct WelcomeView: View {
    @State private var currentPage: Int = 0
    
    var body: some View {
        ZStack {
            Image("welcome_bg")
                .resizable()
                .scaledToFill()
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.6)
            
            VStack {
                WelcomeCard2(currentPage: $currentPage)
                RoundButton(title: "GET STARTED") {
                    
                }
                
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.white)
                    
                    Button {
                        
                    } label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .underline()
                    }
                    
                }
                .padding([.top, .bottom], 20)
                
                HStack(spacing: 8) {
                    ForEach(0...2, id: \.self) { index in
                        Circle()
                            .fill(currentPage == index ? .white : .white.opacity(0.4))
                            .frame(width: 8, height: 8)
                            .scaleEffect(currentPage == index ? 1.3 : 1.0)
                            .animation(.easeInOut, value: currentPage)
                    }
                }
            }
            .padding(.horizontal, 10)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
