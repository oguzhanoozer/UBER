//
//  CustomCancelButton.swift
//  UberSwiftUI
//
//  Created by oguzhan on 6.01.2025.
//

import SwiftUI

struct CustomCancelButton: View {
    let title: String
    let onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            Text(title)
                .fontWeight(.bold)
                .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                .background(.red)
                .cornerRadius(10)
        }
    }
}

#Preview {
    CustomCancelButton(title: "") {
        
    }
}
