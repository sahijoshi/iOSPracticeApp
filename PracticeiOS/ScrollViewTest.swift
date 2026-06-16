//
//  ScrollViewTest.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 15/06/2026.
//

import SwiftUI

struct ScrollViewTest: View {
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                ZStack {
                    Image("fox")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.size.width, height: geo.size.height)
                    Text("Fox")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                                        
                }
                .background(.blue)
            }
            .background(.red)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ScrollViewTest()
}
