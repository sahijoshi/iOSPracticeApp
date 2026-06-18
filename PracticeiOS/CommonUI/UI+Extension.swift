//
//  UI+Extension.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 18/06/2026.
//

import SwiftUI

struct ShowEyeButton: ViewModifier {
    @Binding var isShow: Bool
    
    public func body(content: Content) -> some View {
        HStack {
            content
            Button {
                isShow.toggle()
            } label: {
                Image(systemName: !isShow ? "eye.fill" : "eye.slash.fill" )
                    .foregroundColor(Color("IconColor"))
            }

        }
    }
}
