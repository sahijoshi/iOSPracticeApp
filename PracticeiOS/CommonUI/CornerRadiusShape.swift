//
//  CornerRadiusShape.swift
//  PracticeiOS
//
//  Created by Sahi Joshi on 18/06/2026.
//

import SwiftUI

struct CornerRadiusShape: Shape {
    var radius: CGFloat
    var corners: UIRectCorner

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}

#Preview {
    Text("Hello HHHHHH")
        .background(.red)
        .cornerRadius(20, corners: [.topLeft, .topRight])
}

