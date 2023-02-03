//
//  View+Frame.swift
//  Fulcrum
//
//  Created by Michal on 02/02/2023.
//

import SwiftUI

// MARK: - Fill Parent
public extension View {
    @ViewBuilder func fillParent(alignment: Alignment = .center) -> some View {
        self.frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: alignment)
    }
    
    @ViewBuilder func fillParent(axis: Axis, alignment: Alignment = .center) -> some View {
        switch axis {
        case .horizontal: self.frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, alignment: alignment)
        case .vertical: self.frame(minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: alignment)
        }
    }
}

// MARK: - Frame + CGSize
public extension View {
    @ViewBuilder func frame(size: CGSize?, alignment: Alignment = .center) -> some View {
        self.frame(width: size?.width, height: size?.height)
    }
}
