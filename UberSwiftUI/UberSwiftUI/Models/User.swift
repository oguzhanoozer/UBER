//
//  User.swift
//  UberSwiftUI
//
//  Created by oguzhan on 29.12.2024.
//

import Foundation
import Firebase

enum AccountType: Int, Codable {
    case passenger
    case driver
}

struct User: Codable {
    let fullname: String
    let email: String
    let uid: String
    var coordinates: GeoPoint
    var accountType: AccountType
    var homeLocation: SavedLocation?
    var workLocation: SavedLocation?
}
