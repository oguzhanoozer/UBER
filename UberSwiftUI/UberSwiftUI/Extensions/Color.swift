//
//  Color.swift
//  UberSwiftUI
//
//  Created by oguzhan on 27.12.2024.
//

import SwiftUI

extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let backgroundColor = Color("BackgroundColor")
    let secondaryBackgroundColor = Color("SecondaryBackgroundColor")
    let primaryTextColor = Color("PrimaryTextColor")
}
