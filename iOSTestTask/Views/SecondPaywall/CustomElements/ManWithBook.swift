//
//  ManWithBook.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct ManWithBook: View {
    var body: some View {
        Image(.manWithBook)
            .resizable()
            .frame(maxWidth: 355, maxHeight: 290)
            .clipShape(RoundedShape(cornerRadius: CornerRadii(topLeft: 140, bottomRight: 170)))
    }
}

struct RoundedShape: Shape {
    var cornerRadius: CornerRadii
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [.topLeft, .bottomRight],
            cornerRadii: CGSize(width: cornerRadius.topLeft, height: cornerRadius.bottomRight)
        )
        return Path(path.cgPath)
    }
}

struct CornerRadii {
    var topLeft: CGFloat
    var bottomRight: CGFloat
}

#Preview {
    ManWithBook()
}
