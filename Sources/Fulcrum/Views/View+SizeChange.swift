//
//  View+SizeChange.swift
//  Fulcrum
//
//  Created by Michal on 04/02/2023.
//

import SwiftUI

public extension View {
    /// Performs `action` when the size of the view changes.
    ///
    /// - Parameters:
    ///         - action:  Action handler to execute.
    ///
    /// - Returns: A view with size observer.
    func onSizeChange(perform action: @escaping (CGSize) -> Void) -> some View {
        background(
            GeometryReader { geometryProxy in
                Color.clear.preference(key: SizePreferenceKey.self, value: geometryProxy.size)
            }
            .allowsHitTesting(false)
            .accessibility(hidden: true)
        )
        .onPreferenceChange(SizePreferenceKey.self, perform: action)
    }
}

// MARK: - SizePreferenceKey
struct SizePreferenceKey: PreferenceKey {
    typealias Value = CGSize
    static var defaultValue: Value = .zero

    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = nextValue()
    }
}
