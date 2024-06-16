//
//  ContiuneButton.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct ContiuneButton: View {
    var body: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 130)
                .frame(maxWidth: .infinity, maxHeight: 60)
                .foregroundStyle(LinearGradient(colors: [
                    Colors.contiuneGradientStart,
                    Colors.contiuneGradientEnd
                ], startPoint: .top, endPoint: .bottom))
                .overlay {
                    Text("Continue")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundStyle(.white)
                }
        }
    }
}

