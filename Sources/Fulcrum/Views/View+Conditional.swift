//
//  View+Conditional.swift
//  Fulcrum
//
//  Created by Michal on 04/02/2023.
//

import SwiftUI

// Based on https://www.avanderlee.com/swiftui/conditional-view-modifier/
public extension View {
    /// Applies the` transform` if the `condition` evaluates to `true`.
    ///
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    ///
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: @autoclosure () -> Bool, transform: (Self) -> Content) -> some View {
        if condition() {
            transform(self)
        } else {
            self
        }
    }
    
    /// Applies either `onTrueTransform` or `onFalseTransform` transform based on the result of the `condition`.
    ///
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - onTrueTransform: The transform to apply to when condition is` true`
    ///   - onFalseTransform: The transform to apply to when condition is` false`
    ///
    /// - Returns: The modified `View`
    @ViewBuilder func `if`<TrueContent: View, FalseContent: View>(
        _ condition: @autoclosure () -> Bool,
        onTrueTransform: (Self) -> TrueContent,
        onFalseTransform: (Self) -> FalseContent
    ) -> some View {
        if condition() {
            onTrueTransform(self)
        } else {
            onFalseTransform(self)
        }
    }
}
