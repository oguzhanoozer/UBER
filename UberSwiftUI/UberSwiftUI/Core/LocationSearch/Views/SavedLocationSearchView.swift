//
//  SavedLocationSearchView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 29.12.2024.
//

import SwiftUI

struct SavedLocationSearchView: View {
    @State private var text = ""
    @StateObject var viewModel = HomeViewModel()
    let config: SavedLocationViewModel
    
    let searchForALocation = "Search for a location.."
    
    var body: some View {
        VStack {
            TextField(searchForALocation,
                      text: $viewModel.queryFragment)
                .frame(height: 32)
                .padding()
                .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(.systemGray5))
                    )
                .padding()
            
            Spacer()
            
            LocationSearchResultsView(viewModel: viewModel,
                                      config: .saveLocation(config))
            
        }
        .navigationTitle(config.subtitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SavedLocationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SavedLocationSearchView(config: .home)
        }
    }
}
