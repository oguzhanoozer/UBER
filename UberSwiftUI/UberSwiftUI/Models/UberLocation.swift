//
//  UberLocation.swift
//  UberSwiftUI
//
//  Created by oguzhan on 27.12.2024.
//

import CoreLocation

struct UberLocation: Identifiable {
    let id = NSUUID().uuidString
    let title: String
    let coordinate: CLLocationCoordinate2D
}
