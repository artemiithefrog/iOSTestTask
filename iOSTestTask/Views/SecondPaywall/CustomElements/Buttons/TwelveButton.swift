//
//  TwelveButton.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct TwelveWeeksButton: View {
    var body: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Colors.greyBorderColor, lineWidth: 1)
                .foregroundStyle(Colors.white.opacity(0.17))
                .overlay {
                    HStack {
                        Text("12 weeks")
                            .foregroundStyle(Colors.black)
                            .font(.system(size: 16, weight: .semibold))
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("$39.96")
                                .foregroundStyle(Colors.black)
                                .font(.system(size: 16, weight: .semibold))
                            Text("$3.3 / week")
                                .foregroundColor(Colors.greyTextColor)
                                .font(.system(size: 14, weight: .regular))
                        }
                    }
                    .padding(.leading)
                    .padding(.trailing)
                }
                .frame(maxWidth: .infinity, maxHeight: 65)
        }
    }
}
