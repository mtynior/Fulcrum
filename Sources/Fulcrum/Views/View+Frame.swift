//
//  View+Frame.swift
//  Fulcrum
//
//  Created by Michal on 02/02/2023.
//

import SwiftUI

// MARK: - Fill Parent
public extension View {
    /// Resizes the current view so it fills the parent view both vertically and horizontally.
    ///
    /// - Parameters:
    ///     - alignment: The alignment of this view inside the resulting frame.
    /// - Returns: A view that fills the parent view.
    @ViewBuilder func fillParent(alignment: Alignment = .center) -> some View {
        self.frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: alignment)
    }
    
    /// Resizes the current view so it fills the parent view along the `axis`.
    ///
    /// - Parameters:
    ///     - axis: That axis that is used to fill the parent view.
    ///     - alignment: The alignment of this view inside the resulting frame.
    /// - Returns: A view that fills the parent view along the specified axis.
    @ViewBuilder func fillParent(axis: Axis, alignment: Alignment = .center) -> some View {
        switch axis {
        case .horizontal: self.frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, alignment: alignment)
        case .vertical: self.frame(minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: alignment)
        }
    }
}

// MARK: - Frame + CGSize
public extension View {
    /// Resizes the current view to specified `size`.
    ///
    /// - Parameters:
    ///     - sized: The size of the frame
    ///     - alignment: The alignment of this view inside the resulting frame.
    /// - Returns: A view that have fixed frame
    @ViewBuilder func frame(size: CGSize?, alignment: Alignment = .center) -> some View {
        self.frame(width: size?.width, height: size?.height)
    }
}
