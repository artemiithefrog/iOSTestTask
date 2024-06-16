//
//  ContinueButtonSecond.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct ContiuneButtonSecond: View {
    var body: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 8)
                .frame(maxWidth: .infinity, maxHeight: 60)
                .foregroundStyle(Colors.greenBorderColor)
                .overlay {
                    Text("Continue")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundStyle(.white)
                }
        }
    }
}
