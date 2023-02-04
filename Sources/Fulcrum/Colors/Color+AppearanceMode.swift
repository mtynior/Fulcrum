//
//  Color+AppearanceMode.swift
//  Fulcrum
//
//  Created by Michal on 04/02/2023.
//

#if canImport(UIKit)
import SwiftUI
import UIKit

// MARK: - Light/Dark Mode support
public extension Color {
    /// Creates an instance of a `lightModeColor` or `darkModeColor` based on current User Interface Style.
    ///
    /// - Parameters:
    ///     - lightModeColor: A color that is used when app is in light mode.
    ///     - darkModeColor: A color that is used when app is in dark mode.
    ///     
    init(light lightModeColor: @escaping @autoclosure () -> Color, dark darkModeColor: @escaping @autoclosure () -> Color) {
        self.init(uiColor: UIColor(
            light: UIColor(lightModeColor()),
            dark: UIColor(darkModeColor()))
        )
    }
}

public extension UIColor {
    convenience init(light lightModeColor: @escaping @autoclosure () -> UIColor, dark darkModeColor: @escaping @autoclosure () -> UIColor) {
        self.init { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .light:
                return lightModeColor()
            case .dark:
                return darkModeColor()
            case .unspecified:
                return lightModeColor()
            @unknown default:
                return lightModeColor()
            }
        }
    }
}
#endif
