//
//  SideMenuView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 29.12.2024.
//

import SwiftUI


struct SideMenuView: View {
    private let user: User
    
    let doMoreWithyourAccountTitle = "Do more with your account"
    let makeMoneyDrivingTitle = "Make Money Driving"
    let tripTitle = "Trips"
    let walletTitle = "Wallet"
    let messages = "Messages"
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
            VStack(spacing: 40) {
                // header view
                VStack(alignment: .leading, spacing: 32) {
                    // user info
                    HStack {
                        Image(ImageItems.App.maleProfilePhoto.rawValue)
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 64, height: 64)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text(user.fullname)
                                .font(.system(size: 16, weight: .semibold))
                            
                            Text(user.email)
                                .font(.system(size: 14))
                                .accentColor(Color.theme.primaryTextColor)
                                .opacity(0.77)
                        }
                    }
                    
                    // become a driver
                    VStack(alignment: .leading, spacing: 16) {
                        Text(doMoreWithyourAccountTitle)
                            .font(.footnote)
                        .fontWeight(.semibold)
                        
                        HStack {
                            Image(systemName: "dollarsign.square")
                                .font(.title2)
                                .imageScale(.medium)
                            
                            Text(makeMoneyDrivingTitle)
                                .font(.system(size: 16, weight: .semibold))
                                .padding(6)
                        }
                    }
                    
                    Rectangle()
                        .frame(width: 296, height: 0.75)
                        .opacity(0.7)
                        .foregroundColor(Color(.separator))
                        .shadow(color: .black.opacity(0.7), radius: 4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 16)
                      
                // option list
                VStack {
                    ForEach(SideMenuOptionViewModel.allCases) { viewModel in
                        NavigationLink(value: viewModel) {
                            SideMenuOptionView(viewModel: viewModel)
                                .padding()
                        }
                    }
                }
                .navigationDestination(for: SideMenuOptionViewModel.self) { viewModel in
                    switch viewModel {
                    case .trips:
                        Text(tripTitle)
                    case .wallet:
                        Text(walletTitle)
                    case .settings:
                        SettingsView(user: user)
                    case .messages:
                        Text(messages)
                    }
                }
                
                Spacer()

                
            }
            .padding(.top, 32)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SideMenuView(user: dev.mockUser)
        }
    }
}
