//
//  LocationSearchView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 26.12.2024.
//

import SwiftUI

struct LocationSearchView: View {
    @State private var startLocationText = ""
    @EnvironmentObject var viewModel: HomeViewModel

    let currentLocation = "Current location"
    let whereTo = "Where to?"

    
    var body: some View {
        VStack {
            // header view
            HStack {
                VStack {
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 6, height: 6)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1, height: 24)
                    
                    Rectangle()
                        .fill(Color.theme.primaryTextColor)
                        .frame(width: 6, height: 6)
                }
                
                VStack {
                    TextField(currentLocation, text: $startLocationText)
                        .frame(height: 32)
                        .padding(10)
                        .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color(.systemGroupedBackground))
                            )
                        .padding(.trailing)
                    
                    TextField(whereTo, text: $viewModel.queryFragment)
                        .frame(height: 32)
                        .padding(10)
                        .background(
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(Color(.systemGray4))
                            )
                        .padding(.trailing)
                    
                }
            }
            .padding(.horizontal)
            .padding(.top, 64)
            
            Divider()
                .padding(.vertical)
            
            LocationSearchResultsView(viewModel: viewModel, config: .ride)
        }
        .background(Color.theme.backgroundColor)
        .background(.white)
    }
}

struct LocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchView()
    }
}




