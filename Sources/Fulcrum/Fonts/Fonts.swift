//
//  Fonts.swift
//  Fulcrum
//
//  Created by Michal on 02/02/2023.
//

import SwiftUI

public extension Font {
    enum System {
        /// 8pt
        public static let extraSmall: Font = Font.system(size: 8)
        /// 12pt
        public static let small: Font = Font.system(size: 12)
        /// 14pt
        public static let standard: Font = Font.system(size: 14)
        /// 16pt
        public static let medium: Font = Font.system(size: 16)
        /// 17pt
        public static let systemControl: Font = Font.system(size: 16)
        /// 18pt
        public static let large: Font = Font.system(size: 18)
        /// 20pt
        public static let extraLarge: Font = Font.system(size: 20)
        /// 24pt
        public static let extraLarge2: Font = Font.system(size: 24)
        /// 30pt
        public static let extraLarge3: Font = Font.system(size: 30)
        /// 36pt
        public static let extraLarge4: Font = Font.system(size: 36)
        /// 48pt
        public static let extraLarge5: Font = Font.system(size: 48)
        /// 60pt
        public static let extraLarge6: Font = Font.system(size: 60)
        /// 72pt
        public static let extraLarge7: Font = Font.system(size: 72)
        /// 96pt
        public static let extraLarge8: Font = Font.system(size: 96)
        /// 128pt
        public static let extraLarge9: Font = Font.system(size: 128)
    }
}
