//
//  PickupPassengerView.swift
//  UberSwiftUI
//
//  Created by oguzhan on 31.12.2024.
//

import SwiftUI

struct PickupPassengerView: View {
    let trip: Trip
    @EnvironmentObject var viewModel: HomeViewModel
    
    let cancelTitle = "CANCEL TRIP"
    let minTitle = "min"
    let earningstitle = "Earnings"
    let pickUpTitle = "Pickup"
    
   
    var body: some View {
        VStack {
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48, height: 6)
                .padding(.top, 8)
            
            PickupTripView()
            
            PickupPassengerInfo()
            
            CustomCancelButton(title: cancelTitle) {
                viewModel.cancelTripAsDriver()
            }
            
        }
        .padding(.bottom, 24)
        .background(Color.theme.backgroundColor)
        .cornerRadius(16)
        .shadow(color: Color.theme.secondaryBackgroundColor, radius: 20)
    }
    
    @ViewBuilder
    fileprivate func PickupPassengerInfo() -> some View {
         VStack {
            HStack {
                Image(ImageItems.App.maleProfilePhoto.rawValue)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(trip.passengerName)
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
                
                VStack(spacing: 6) {
                    Text(earningstitle)
                    
                    Text("\(trip.tripCost.toCurrency())")
                        .font(.system(size: 24, weight: .semibold))
                }
            }
            
            Divider()
        }
        .padding()
    }
    
    @ViewBuilder
    fileprivate func PickupTripView() -> some View {
         // would you like to pickup view
        VStack {
            HStack {
                Text("\(pickUpTitle) \(trip.passengerName) at \(trip.dropoffLocationName)")
                    .font(.headline)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .frame(height: 44)
                
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
    
}

struct PickupPassengerView_Previews: PreviewProvider {
    static var previews: some View {
        PickupPassengerView(trip: dev.mockTrip)
    }
}
