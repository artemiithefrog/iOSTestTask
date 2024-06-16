//
//  XmarkButton.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct XmarkButton: View {
    var body: some View {
        Button {
            
        } label: {
            Circle()
                .stroke(Colors.xmarkButtonBorderColor, lineWidth: 1)
                .frame(width: 42, height: 42)
                .background(Circle().foregroundColor(Colors.xmarkButtonColor))
                .overlay {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .bold()
                        .foregroundStyle(Colors.black)
                }
        }
    }
}
