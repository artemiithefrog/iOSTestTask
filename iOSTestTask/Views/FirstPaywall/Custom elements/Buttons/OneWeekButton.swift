//
//  OneWeekButton.swift
//  iOSTestTask
//
//  Created by artemiithefrog . on 16.06.2024.
//

import SwiftUI

struct OneWeekButton: View {
    var body: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(Colors.white.opacity(0.17))
                .overlay {
                    HStack {
                        Text("One week")
                            .foregroundStyle(Colors.white)
                            .font(.system(size: 16, weight: .semibold))
                        Spacer()
                        Text("$2.99")
                            .foregroundStyle(Colors.white)
                            .font(.system(size: 16, weight: .semibold))
                    }
                    .padding(.leading)
                    .padding(.trailing)
                }
                .frame(maxWidth: .infinity, maxHeight: 65)
        }
    }
}
