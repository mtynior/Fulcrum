//
//  DismissKeyboardOnTapModifier.swift
//  Fulcrum
//
//  Created by Michal on 03/02/2023.
//


#if canImport(UIKit)
import SwiftUI

struct DismissKeyboardOnTapModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
    }
}

public extension View {
    /// Dismisses keyboard when user taps on the view.
    ///
    /// - Returns: View that can dismiss keyboard on tap.
    func dismissesKeyboardOnTap() -> some View {
        self.modifier(DismissKeyboardOnTapModifier())
    }
}
#endif
