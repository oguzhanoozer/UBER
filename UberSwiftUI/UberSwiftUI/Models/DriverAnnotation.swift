//
//  DriverAnnotation.swift
//  UberSwiftUI
//
//  Created by oguzhan on 30.12.2024.
//

import MapKit
import Firebase


class DriverAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    let uid: String
    
    init(driver: User) {
        self.uid = driver.uid
        self.coordinate = CLLocationCoordinate2D(latitude: driver.coordinates.latitude,
                                                 longitude: driver.coordinates.longitude)
    }
}
