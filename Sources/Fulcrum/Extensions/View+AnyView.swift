//
//  View+AnyView.swift
//  Fulcrum
//
//  Created by Michal on 03/02/2023.
//

import SwiftUI

public extension View {
    /// Erases current  view to opaque `AnyView`
    ///
    /// - Returns: A type-erased view.
    func eraseToAnyView() -> AnyView {
        return AnyView(self)
    }
}
