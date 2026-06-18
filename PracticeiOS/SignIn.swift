//
//  SignIn.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 17/06/2026.
//

import SwiftUI

struct SignIn: View {
    @State var isShowPaswword: Bool = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("welcome_bg")
                .resizable()
                .scaledToFill()
                .blur(radius: 10)
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.6)
            
            ScrollView {
                VStack(spacing: 15) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Welcome Back")
                            .font(Font.system(size: 26, weight: .semibold))
                        Text("Sign in to continue")
                            .font(Font.system(size: 15, weight: .regular))
                            .foregroundStyle(.gray)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    LineTextField(image: "email", placeholder: "Enter your email or username", text: "", keyboardType: .emailAddress)
                    
                    LineSecureField(image: "lock", placeholder: "Enter your password", text: "", isShowPassword: $isShowPaswword)
                    
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Forgot Password?")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundStyle(.orange)
                            
                        }
                    }
                    
                    RoundButton(title: "Sign In") {
                        
                    }
                    
                    Spacer()
                        .frame(height: 10)
                    HStack {
                        Rectangle()
                            .frame(height: 1)
                            .foregroundStyle(Color("Gray50"))
                        Text("Or continue with")
                            .font(Font.system(size: 15, weight: .regular))
                            .foregroundStyle(Color("Gray50"))
                        Rectangle()
                            .frame(height: 1)
                            .foregroundStyle(Color("Gray50"))
                    }
                    
                    Spacer()
                        .frame(height: 10)
                    
                    VStack(spacing: 20) {
                        SocialButton(title: "Sign with Google", bgColor: .orange, image: "email") {
                            
                        }
                        
                        SocialButton(title: "Sign with Facebook", bgColor: .blue, image: "lock") {
                            
                        }
                        
                        SocialButton(title: "Sign with Apple", bgColor: .primary, image: "lock") {
                            
                        }
                        
                    }
                    
                    HStack {
                        Text("Don't have an account?")
                            .font(.headline)
                            .foregroundStyle(.gray)
                        
                        Button {
                            
                        } label: {
                            Text("Sign Up")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundStyle(.orange)
                        }
                        
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 30)
            }
            .background(.white)
            .cornerRadius(20, corners: [.topLeft, .topRight])
            .padding(.top, 100)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SignIn()
}
