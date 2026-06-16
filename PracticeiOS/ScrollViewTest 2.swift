////
////  ScrollViewTest.swift
////  PracticeiOS
////
////  Created by Sahi Joshi on 15/06/2026.
////
//
//import SwiftUI
//
//struct ScrollViewTest2: View {
//    var body: some View {
//        GeometryReader { geo in
//            ScrollView(.vertical) { // .horizontal for horizontal scrolling
//                VStack(spacing: 0) { // use HStack
//                    ZStack {
//                        Image("fox")
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: geo.size.width, height: geo.size.height)
//                        Text("Fox")
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//                        
//                    }
//                    .background(.blue)
//                    ZStack {
//                        Image("lion")
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: geo.size.width, height: geo.size.height)
//                        Text("Lion")
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//                        
//                    }
//                    ZStack {
//                        Image("leo")
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: geo.size.width, height: geo.size.height)
//                        Text("Leopard")
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//                        
//                    }
//                }
//            }
//            .scrollTargetBehavior(.paging)
//            .background(.red)
//            
//        }
//        .ignoresSafeArea()
//    }
//}
//
//#Preview {
//    ScrollViewTest2()
//}
