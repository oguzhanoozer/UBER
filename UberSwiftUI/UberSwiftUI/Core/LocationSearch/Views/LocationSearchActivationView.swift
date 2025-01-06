//
//  LocationSearchActivationView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 26.12.2024.
//

import SwiftUI

struct LocationSearchActivationView: View {
    
    let whereTo = "Where to?"
    
    var body: some View {
        HStack{
            Rectangle()
                .fill(Color.black)
                .frame(width: 8, height: 8)
                .padding(.horizontal)
            Text("Where to?")
                .foregroundStyle(Color(.darkGray))
                
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 64, height: 50)
        .background(
            Rectangle()
                .fill(Color.white)
                .cornerRadius(16)
                .shadow(color: .black, radius: 6)
               
        )
    }
}

#Preview {
    LocationSearchActivationView()
}
