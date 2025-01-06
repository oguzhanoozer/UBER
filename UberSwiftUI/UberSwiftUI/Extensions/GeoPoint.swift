//
//  GeoPoint.swift
//  UberSwiftUI
//
//  Created by oguzhan on 31.12.2024.
//

import Firebase
import CoreLocation

extension GeoPoint {
    func toCoordinate() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
    }
}
