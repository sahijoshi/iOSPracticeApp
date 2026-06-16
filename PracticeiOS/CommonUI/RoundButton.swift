//
//  RoundButton.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 16/06/2026.
//

import SwiftUI

struct RoundButton: View {
    let title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 52, maxHeight: 52)
        .background(.orange)
        .cornerRadius(14)
    }
}

#Preview {
    RoundButton(title: "Hello") {
        
    }
}
