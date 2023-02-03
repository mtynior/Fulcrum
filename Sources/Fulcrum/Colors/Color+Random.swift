//
//  Color+Random.swift
//  Fulcrum
//
//  Created by Michal on 03/02/2023.
//

import SwiftUI

public extension Color {
    /// Creates a random Color.
    ///
    /// - Returns: An instance of a random color.
    static func random() -> Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}
