//
//  View+Debug.swift
//  Fulcrum
//
//  Created by Michal on 03/02/2023.
//

import SwiftUI

// MARK: - Action
public extension View {
    /// Performs `action` when  view is drawn on a screen.
    /// It works only in DEBUG mode.
    ///
    /// - Params:
    ///     - action: Action handler to execute
    ///
    /// - Returns: Current view
    func debugAction(_ action: () -> Void) -> Self {
        #if DEBUG
        action()
        #endif

        return self
    }
}

// MARK: - Print
public extension View {
    /// Prints `items` when  view is drawn on a screen.
    /// It works only in DEBUG mode.
    ///
    /// - Params:
    ///     - items: Items to print
    ///
    /// - Returns: Current view
    func debugPrint(_ items: Any...) -> Self {
        debugAction {
            print(items)
        }
    }
}

// MARK: - Debug Modifier
public extension View {
    /// Applies `modifier` onto a View only in DEBUG mode, otherwise returns original view.
    ///
    /// - Params:
    ///     - modifier: A modifier to apply in DEBUG mode.
    ///
    /// - Returns: A modified View for DEBUG mode, other wise original view.
    func debugModifier<T: View>(_ modifier: (Self) -> T) -> some View {
        #if DEBUG
        return modifier(self)
        #else
        return self
        #endif
    }
}

// MARK: - Debug Border
public extension View {
    /// Adds border to the View. The border is visible only in DEBUG mode.
    ///
    /// - Params:
    ///     - color: Color of the border. By default the border is red.
    ///     - width: Width of the border. By default the border is 1pt wide.
    ///
    ///- Returns: View with border.
    func debugBorder(_ color: Color = .red, width: CGFloat = 1) -> some View {
        debugModifier {
            $0.border(color, width: width)
        }
    }
}


// MARK: - Debug background
public extension View {
    /// Adds background to the View. The border is visible only in DEBUG mode.
    ///
    /// - Params:
    ///     - color: Color of the background. By default the border is red.
    ///
    /// - Returns: View with border.
    func debugBackground(_ color: Color = .red) -> some View {
        debugModifier {
            $0.background(color)
        }
    }
}
