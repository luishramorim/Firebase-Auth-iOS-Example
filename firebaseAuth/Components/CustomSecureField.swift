//
//  CustomSecureField.swift
//  firebaseAuth
//
//  Created by Luis Amorim on 21/02/25.
//

import SwiftUI

/// A custom SwiftUI secure field with an eye icon for password visibility.
struct CustomSecureField: View {
    var placeholder: String
    @Binding var text: String
    @Binding var isPasswordVisible: Bool
    
    var body: some View {
        HStack {
            if isPasswordVisible {
                TextField(placeholder, text: $text)
                    .font(.system(size: 16))
                    .padding(.leading, 10)
                    .frame(height: 50)
                    .foregroundColor(.primary)
            } else {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 16))
                    .padding(.leading, 10)
                    .frame(height: 50)
                    .foregroundColor(.primary)
            }
            
            Button(action: {
                isPasswordVisible.toggle()
            }) {
                Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                    .foregroundColor(.gray)
                    .padding(.trailing, 10)
            }
        }
        .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.4), lineWidth: 1))
    }
}
