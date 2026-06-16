////
////  ScrollViewTest.swift
////  PracticeiOS
////
////  Created by Sahi Joshi on 15/06/2026.
////
//
//import SwiftUI
//
//struct ScrollViewTest3: View {
//    let animals = ["fox", "lion", "leo"]
//    @State private var currentPage: Int? = 0
//    
//    var body: some View {
//        GeometryReader { geo in
//            ZStack {
//                ScrollView(.horizontal) {
//                    HStack(spacing: 0) { // use HStack
//                        ForEach(Array(animals.enumerated()), id: \.offset) { index, animal in
//                            ZStack {
//                                Image(animal)
//                                    .resizable()
//                                    .scaledToFill()
//                                Text(animal)
//                                    .font(.largeTitle)
//                                    .fontWeight(.bold)
//                                    .foregroundStyle(.white)
//                            }
//                            .frame(width: geo.size.width, height: geo.size.height)
//                            .id(index)
//                        }
//                    }
//                    .scrollTargetLayout()
//                }
//                .scrollTargetBehavior(.paging)
//                .scrollPosition(id: $currentPage)
//                .background(.red)
//                .onChange(of: currentPage) { oldValue, newValue in
//                    print("oldValue", oldValue)
//                    print("newVAlue", newValue)
//                }
//            }
//            
//            VStack(alignment: .trailing) {
//                Spacer()
//                HStack(spacing: 8) {
//                    ForEach(0..<animals.count, id: \.self) { index in
//                        Circle()
//                            .fill(currentPage == index ? .white : .white.opacity(0.4))
//                            .frame(width: 8, height: 8)
//                            .scaleEffect(currentPage == index ? 1.3 : 1.0)
//                            .animation(.easeInOut, value: currentPage)
//                    }
//                }
//                .padding(.bottom, 30)
//            }
//            .frame(maxWidth: .infinity)
//        }
//        .ignoresSafeArea()
//    }
//}
//
//#Preview {
//    ScrollViewTest3()
//}
