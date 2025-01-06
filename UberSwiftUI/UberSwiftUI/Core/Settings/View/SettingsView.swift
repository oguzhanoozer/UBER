//
//  SettingsView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 29.12.2024.
//

import SwiftUI

struct SettingsView: View {
    private let user: User
    @EnvironmentObject var viewModel: AuthViewModel
    
    let favoriteTitle = "Favorites"
    let settingsTitle = "Settings"
    let accountTitle = "Account"
    let notificationsTitle = "Notifications"
    let paymentMethodTitle = "Payment Methods"
    let makeMoneyDriving = "Make Money Driving"
    let signOutTitle = "Sign Out"
    
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        VStack {
            List {
                Section {
                    // user info header
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
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                            .font(.title2)
                            .foregroundColor(.gray)
                    }
                    .padding(8)
                }
                
                Section(favoriteTitle) {
                    ForEach(SavedLocationViewModel.allCases) { viewModel in
                        NavigationLink {
                            SavedLocationSearchView(config: viewModel)
                        } label: {
                            SavedLocationRowView(viewModel: viewModel, user: user)
                        }
                    }
                }

                
                Section(settingsTitle) {
                    SettingsRowView(imageName: "bell.circle.fill", title: notificationsTitle, tintColor: Color(.systemPurple))
                    
                    SettingsRowView(imageName: "creditcard.circle.fill",
                                    title: paymentMethodTitle,
                                    tintColor: Color(.systemBlue))
                }
                
                Section(accountTitle) {
                    SettingsRowView(imageName: "dollarsign.circle.fill",
                                    title: makeMoneyDriving,
                                    tintColor: Color(.systemGreen))
                    
                    SettingsRowView(imageName: "arrow.left.circle.fill",
                                    title: signOutTitle,
                                    tintColor: Color(.systemRed))
                    .onTapGesture {
                        viewModel.signout()
                    }
                    
                }
            }
        }
        .navigationTitle(settingsTitle)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SettingsView(user: dev.mockUser)
        }
    }
}
