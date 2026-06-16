////
////  WelcomeCard.swift
////  PracticeiOS
////
////  Created by Sahi Joshi on 16/06/2026.
////
//
//import SwiftUI
//
//struct WelcomeCard: View {
//    @State private var currentPage: Int? = 0
//    @State private var screenWidth: CGFloat = 375 // Default fallback
//    
//    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 0) {
//                ForEach(1...4, id: \.self) { index in
//                    VStack(spacing: 10) {
//                        Text("Find Your Perfect Venue \(index)")
//                            .foregroundColor(.white)
//                            .font(.system(size: 36, weight: .medium, design: .serif))
//                            .multilineTextAlignment(.center)
//                        
//                        Text("Discover banquet halls, cafés & event spaces...")
//                            .foregroundColor(.white)
//                            .font(.subheadline)
//                            .multilineTextAlignment(.center)
//                    }
//                    .padding(.horizontal, 60)
//                    .padding(.bottom, 60)
//                    .frame(width: screenWidth) // Dynamically updates on rotation!
//                    .id(index)
//                }
//            }
//            .scrollTargetLayout()
//        }
//        .scrollTargetBehavior(.paging)
//        .scrollPosition(id: $currentPage)
//        .fixedSize(horizontal: false, vertical: true)
//        .background(
//            GeometryReader { geo in
//                Color.clear
//                // This handles BOTH the initial layout and any screen rotations seamlessly
//                    .onChange(of: geo.size.width, initial: true) { oldValue, newValue in
//                        screenWidth = newValue
//                    }
//            }
//        )
//    }
//}
//#Preview {
//    WelcomeCard()
//        .background(.blue)
//    
//}
