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
            
            VStack {
                VStack(spacing:10) {
                    Text("Find Your Perfect Venue")
                        .foregroundColor(.white)
                        .font(.system(size: 36, weight: .medium, design: .serif))
                        .multilineTextAlignment(.center)
                    
                    Text("Discover banquet halls, cafés & event spaces across Kathmandu")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal, 60)
                .padding(.bottom, 60)

                Button {
                    
                } label: {
                    Text("GET STARTED")
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 52)
                .background(.orange)
                .cornerRadius(14)
                
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.white)
                        
                    Button {
                        
                    } label: {
                        Text("Sign In")
                    }
                    .foregroundStyle(.white)
                    .underline()
                    .font(.headline)
                }
                .padding(.top, 20)
            }
            .padding(.horizontal, 10)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
