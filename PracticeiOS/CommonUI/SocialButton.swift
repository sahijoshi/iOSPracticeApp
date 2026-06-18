//
//  RoundButton.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 16/06/2026.
//

import SwiftUI

struct SocialButton: View {
    let title: String
    var bgColor: Color = Color(uiColor: .systemGray6)
    let image: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 52, maxHeight: 52)
        .background(bgColor)
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .overlay (
            RoundedRectangle(cornerRadius: 14)
                .stroke(.gray, lineWidth: 1)
        )
        .overlay(alignment: .leading) {
            Image(image)
                .padding(.leading, 20)
        }
    }
}

#Preview {
    SocialButton(title: "Hellos", image: "lock") {
        
    }
}
