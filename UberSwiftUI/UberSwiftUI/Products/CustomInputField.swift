//
//  CustomInputField.swift
//  UberSwiftUI
//
//  Created by oguzhan on 28.12.2024.
//

import SwiftUI

struct CustomInputField: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // title
            Text(title)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.footnote)
            
            // text field
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .textInputAutocapitalization(.never)
                    .foregroundColor(.white)
            } else {
                TextField(placeholder, text: $text)
                    .textInputAutocapitalization(.never)
                    .foregroundColor(.white)
            }
            
            // divider
            Rectangle()
                .foregroundColor(Color(.init(white: 1, alpha: 0.3)))
                .frame(width: UIScreen.main.bounds.width - 32, height: 0.7)
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(text: .constant(""), title: "Email", placeholder: "name@example.com")
    }
}
