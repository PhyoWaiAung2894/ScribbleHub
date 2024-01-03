//
//  CustomTextField.swift
//  ScribbleHub
//
//  Created by PhyoWai Aung on 12/31/23.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var placeholder: String
    var placeholderColor: Color

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(placeholderColor) // Placeholder color
                    .font(.system(size: 14)) // Placeholder font size
                    .padding(.leading, 8)
            }

            TextField("", text: $text)// Change text color
                .font(.system(size: 14)) // Set font size
                .frame(height: 30)
                .padding(8)
                .padding(.horizontal, 8)
        }
    }
}
