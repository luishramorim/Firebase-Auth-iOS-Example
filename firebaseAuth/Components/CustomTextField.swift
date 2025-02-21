//
//  CustomTextField.swift
//  firebaseAuth
//
//  Created by Luis Amorim on 21/02/25.
//

import SwiftUI

/// A custom SwiftUI text field with an icon.
struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var icon: String
    
    var body: some View {
        HStack {
            TextField(placeholder, text: $text)
                .font(.system(size: 16))
                .padding(.leading, 10)
                .frame(height: 50)
                .foregroundColor(.primary)
                
            Image(systemName: icon)
                .foregroundColor(.gray)
                .padding(.trailing, 10)
        }
        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.4), lineWidth: 1))
    }
}
