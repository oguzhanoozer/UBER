//
//  SavedLocation.swift
//  UberSwiftUI
//
//  Created by oguzhan on 29.12.2024.
//

import SwiftUI
import FirebaseFirestore

struct SavedLocation: Codable {
    let title: String
    let address: String
    let coordinates: GeoPoint
}
