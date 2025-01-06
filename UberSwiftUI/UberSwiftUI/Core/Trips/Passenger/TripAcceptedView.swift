//
//  TripLoadingView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 31.12.2024.
//

import SwiftUI

struct TripAcceptedView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    
    let cancelTitle = "CANCEL TRIP"
    let meetTheDriverAtTitle = "Meet your driver at"
    let forYourTripYo = "for your trip to"
    let minTitle = "min"
    
    
    var body: some View {
        VStack {
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48, height: 6)
                .padding(.top, 8)
            
            if let trip = viewModel.trip {
                PickUpInfoView(trip)
                
                // driver info view
                VStack {
                    DriverInfoView(trip)
                    
                    Divider()
                }
                .padding()
            }
            
            CustomCancelButton(title: cancelTitle) {
                viewModel.cancelTripAsPassenger()
            }
        
        }
        .padding(.bottom, 24)
        .background(Color.theme.backgroundColor)
        .cornerRadius(16)
        .shadow(color: Color.theme.secondaryBackgroundColor, radius: 20)
    }
    
    @ViewBuilder
    fileprivate func PickUpInfoView(_ trip: Trip) -> some View{
        // pickup info view
        VStack {
            HStack {
                Text("\(meetTheDriverAtTitle) \(trip.pickupLocationName) \(forYourTripYo) \(trip.dropoffLocationName)")
                    .font(.body)
                    .frame(height: 44)
                    .lineLimit(2)
                    .padding(.trailing)
                
                Spacer()
                
                VStack {
                    Text("\(trip.travelTimeToPassenger)")
                        .bold()
                    
                    Text(minTitle)
                        .bold()
                }
                .frame(width: 56, height: 56)
                .foregroundColor(.white)
                .background(Color(.systemBlue))
                .cornerRadius(10)
            }
            .padding()
            
            Divider()
        }
    }
    
    @ViewBuilder
    fileprivate func DriverInfoView(_ trip: Trip) -> some View {
        HStack {
            Image(ImageItems.App.maleProfilePhoto.rawValue)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text(trip.driverName)
                    .fontWeight(.bold)
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color(.systemYellow))
                        .imageScale(.small)
                    
                    Text("4.8")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
            
            // driver vehicle info
            VStack(alignment: .center) {
                Image(ImageItems.App.uberX.rawValue)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 64)
                
                HStack {
                    Text("Mercedes S -")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.gray)
                    
                    Text("5G4K08")
                        .font(.system(size: 14, weight: .semibold))
                    
                }
                .frame(width: 160)
                .padding(.bottom)
            }
        }
    }
}

struct TripAcceptedView_Previews: PreviewProvider {
    static var previews: some View {
        TripAcceptedView()
    }
}
