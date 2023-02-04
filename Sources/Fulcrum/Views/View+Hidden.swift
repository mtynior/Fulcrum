//
//  View+Hidden.swift
//  Fulcrum
//
//  Created by Michal on 04/02/2023.
//

import SwiftUI

public extension View {
    /// Hide or show the view based on value of `isHidden`.
    /// By default the view is preserved in view hierarchy.  To remove the view completely use `shouldRemove`
    ///
    /// - Parameters:
    ///   - isHidden: Indicates whether the view is visible or hidden.
    ///   - shouldRemove: Indicates whether to remove  the view from view hierarchy.
    ///
    @ViewBuilder func hidden(_ isHidden: Bool, shouldRemove: Bool = false) -> some View {
        if isHidden {
            if !shouldRemove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
