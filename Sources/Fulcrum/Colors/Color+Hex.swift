//
//  Color+Hex.swift
//  Fulcrum
//
//  Created by Michal on 02/02/2023.
//

import SwiftUI

// swiftlint:disable identifier_name
public extension Color {
    /// Creates Color instance from `hex` RGB(A) string.
    ///
    /// Supported hex options: RRGGBBAA, RRGGBB, RGB.
    /// Allowed prefixes: `0x` and `#`.
    ///
    ///  - Parameters:
    ///         - hex: RGB(A) string value.
    ///  - Returns: Color instance described by valid `hex` value, otherwise `nil`.
    init?(hex: String) {
        var normalizedHex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        
        if normalizedHex.hasPrefix("0x") {
            normalizedHex = String(normalizedHex.dropFirst(2))
        } else if normalizedHex.hasPrefix("#") {
            normalizedHex = String(normalizedHex.dropFirst(1))
        }
        
        var int: UInt64 = 0
        Scanner(string: normalizedHex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        
        switch normalizedHex.count {
        case 3: // RGB (12-bit)
            (r, g, b, a) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17, 255)
        case 6: // RGB (24-bit)
            (r, g, b, a) = (int >> 16, int >> 8 & 0xFF, int & 0xFF, 255)
        case 8: // RGBA (32-bit)
            (r, g, b, a) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            return nil
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
