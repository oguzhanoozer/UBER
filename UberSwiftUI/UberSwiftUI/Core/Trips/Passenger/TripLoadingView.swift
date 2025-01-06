//
//  TripLoadingView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 31.12.2024.
//

import SwiftUI
struct TripLoadingView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    
    let connectionYouToDriver = "Connecting you to a driver"
    
    var body: some View {
        VStack {
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48, height: 6)
                .padding(.top, 8)
            
            HStack {
                Text(connectionYouToDriver)
                    .font(.headline)
                    .padding()
                
                Spacer()
                
                Spinner(lineWidth: 6, height: 64, width: 64)
                    .padding()
            }
            .padding(.bottom, 24)
            
        }
        .background(Color.theme.backgroundColor)
        .cornerRadius(16)
        .shadow(color: Color.theme.secondaryBackgroundColor, radius: 20)
    }
}

struct TripLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        TripLoadingView()
    }
}
