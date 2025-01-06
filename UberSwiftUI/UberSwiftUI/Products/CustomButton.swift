//
//  CustomButtoon.swift
//  UberSwiftUI
//
//  Created by oguzhan on 6.01.2025.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Text(title)
                    .foregroundColor(.black)
                
                Image(systemName: "arrow.right")
                    .foregroundColor(.black)
            }
            .frame(width: UIScreen.main.bounds.width - 32, height: 50)
        }
        .background(Color.white)
        .cornerRadius(10)
    }
}

#Preview {
    CustomButton(title: "") {
        
    }
}
