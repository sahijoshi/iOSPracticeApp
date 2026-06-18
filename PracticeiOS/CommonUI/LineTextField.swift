//
//  LineTextField.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 18/06/2026.
//

import SwiftUI

struct LineTextField: View {
    let image: String
    let placeholder: String
    @State var text: String = "text"
    var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        HStack(spacing: 10) {
            Image(image)
                .foregroundColor(.gray)

            TextField(placeholder, text: $text)
                .textFieldStyle(.plain)
                .keyboardType(keyboardType)
                .autocapitalization(.none)
                .disableAutocorrection(true)
        }
        .padding()
        .frame(height: 55)
        .background(Color("TxtFieldBg"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("Stroke"), lineWidth: 1)
        )
    }
}


struct LineSecureField: View {
    let image: String
    let placeholder: String
    @State var text: String = "text"
    let keyboardType: UIKeyboardType = .default
    @Binding var isShowPassword: Bool
    
    var body: some View {
        HStack(spacing: 10) {
            Image(image)
                .foregroundColor(.gray)

            if isShowPassword {
                TextField(placeholder, text: $text)
                    .textFieldStyle(.plain)
                    .keyboardType(keyboardType)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .modifier(ShowEyeButton(isShow: $isShowPassword))
            } else {
                SecureField(placeholder, text: $text)
                    .autocapitalization(.none)
                    .modifier(ShowEyeButton(isShow: $isShowPassword))
            }
        }
        .padding()
        .frame(height: 55)
        .background(Color("TxtFieldBg"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color("Stroke"), lineWidth: 1)
        )
    }
}

#Preview {
    LineTextField(image: "email", placeholder: "Enter your email or username", text: "")
    LineSecureField(image: "lock", placeholder: "Enter your password", text: "", isShowPassword: .constant(false))

}
