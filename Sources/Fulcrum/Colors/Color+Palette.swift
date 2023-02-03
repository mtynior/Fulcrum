//
//  Color+Palette.swift
//  Fulcrum
//
//  Created by Michal on 02/02/2023.
//

import SwiftUI

public extension Color {
    // Based on Tailwind https://tailwindcss.com/docs/customizing-colors
    enum Palette {
        // Slate
        public static let slate50: Color = Color(hex: "f8fafc")!
        public static let slate100: Color = Color(hex: "f1f5f9")!
        public static let slate200: Color = Color(hex: "e2e8f0")!
        public static let slate300: Color = Color(hex: "cbd5e1")!
        public static let slate400: Color = Color(hex: "94a3b8")!
        public static let slate500: Color = Color(hex: "64748b")!
        public static let slate600: Color = Color(hex: "475569")!
        public static let slate700: Color = Color(hex: "334155")!
        public static let slate800: Color = Color(hex: "1e293b")!
        public static let slate900: Color = Color(hex: "0f172a")!

        // Gray
        public static let gray50: Color = Color(hex: "f9fafb")!
        public static let gray100: Color = Color(hex: "f3f4f6")!
        public static let gray200: Color = Color(hex: "e5e7eb")!
        public static let gray300: Color = Color(hex: "d1d5db")!
        public static let gray400: Color = Color(hex: "9ca3af")!
        public static let gray500: Color = Color(hex: "6b7280")!
        public static let gray600: Color = Color(hex: "4b5563")!
        public static let gray700: Color = Color(hex: "374151")!
        public static let gray800: Color = Color(hex: "1f2937")!
        public static let gray900: Color = Color(hex: "111827")!

        // Zinc
        public static let zinc50: Color = Color(hex: "fafafa")!
        public static let zinc100: Color = Color(hex: "f4f4f5")!
        public static let zinc200: Color = Color(hex: "e4e4e7")!
        public static let zinc300: Color = Color(hex: "d4d4d8")!
        public static let zinc400: Color = Color(hex: "a1a1aa")!
        public static let zinc500: Color = Color(hex: "71717a")!
        public static let zinc600: Color = Color(hex: "52525b")!
        public static let zinc700: Color = Color(hex: "3f3f46")!
        public static let zinc800: Color = Color(hex: "27272a")!
        public static let zinc900: Color = Color(hex: "18181b")!
        
        // Neutral
        public static let neutral50: Color = Color(hex: "fafafa")!
        public static let neutral100: Color = Color(hex: "f5f5f5")!
        public static let neutral200: Color = Color(hex: "e5e5e5")!
        public static let neutral300: Color = Color(hex: "d4d4d4")!
        public static let neutral400: Color = Color(hex: "a3a3a3")!
        public static let neutral500: Color = Color(hex: "737373")!
        public static let neutral600: Color = Color(hex: "525252")!
        public static let neutral700: Color = Color(hex: "404040")!
        public static let neutral800: Color = Color(hex: "262626")!
        public static let neutral900: Color = Color(hex: "171717")!
        
        // Stone
        public static let stone50: Color = Color(hex: "fafaf9")!
        public static let stone100: Color = Color(hex: "f5f5f4")!
        public static let stone200: Color = Color(hex: "e7e5e4")!
        public static let stone300: Color = Color(hex: "d6d3d1")!
        public static let stone400: Color = Color(hex: "a8a29e")!
        public static let stone500: Color = Color(hex: "78716c")!
        public static let stone600: Color = Color(hex: "57534e")!
        public static let stone700: Color = Color(hex: "44403c")!
        public static let stone800: Color = Color(hex: "292524")!
        public static let stone900: Color = Color(hex: "1c1917")!

        // Red
        public static let red50: Color = Color(hex: "fef2f2")!
        public static let red100: Color = Color(hex: "fee2e2")!
        public static let red200: Color = Color(hex: "fecaca")!
        public static let red300: Color = Color(hex: "fca5a5")!
        public static let red400: Color = Color(hex: "f87171")!
        public static let red500: Color = Color(hex: "ef4444")!
        public static let red600: Color = Color(hex: "dc2626")!
        public static let red700: Color = Color(hex: "b91c1c")!
        public static let red800: Color = Color(hex: "991b1b")!
        public static let red900: Color = Color(hex: "7f1d1d")!

        
        // Orange
        public static let orange50: Color = Color(hex: "fff7ed")!
        public static let orange100: Color = Color(hex: "ffedd5")!
        public static let orange200: Color = Color(hex: "fed7aa")!
        public static let orange300: Color = Color(hex: "fdba74")!
        public static let orange400: Color = Color(hex: "fb923c")!
        public static let orange500: Color = Color(hex: "f97316")!
        public static let orange600: Color = Color(hex: "ea580c")!
        public static let orange700: Color = Color(hex: "c2410c")!
        public static let orange800: Color = Color(hex: "9a3412")!
        public static let orange900: Color = Color(hex: "7c2d12")!
        
        // Amber
        public static let amber50: Color = Color(hex: "fffbeb")!
        public static let amber100: Color = Color(hex: "fef3c7")!
        public static let amber200: Color = Color(hex: "fde68a")!
        public static let amber300: Color = Color(hex: "fcd34d")!
        public static let amber400: Color = Color(hex: "fbbf24")!
        public static let amber500: Color = Color(hex: "f59e0b")!
        public static let amber600: Color = Color(hex: "d97706")!
        public static let amber700: Color = Color(hex: "b45309")!
        public static let amber800: Color = Color(hex: "92400e")!
        public static let amber900: Color = Color(hex: "78350f")!
        
        // Yellow
        public static let yellow50: Color = Color(hex: "fefce8")!
        public static let yellow100: Color = Color(hex: "fef9c3")!
        public static let yellow200: Color = Color(hex: "fef08a")!
        public static let yellow300: Color = Color(hex: "fde047")!
        public static let yellow400: Color = Color(hex: "facc15")!
        public static let yellow500: Color = Color(hex: "eab308")!
        public static let yellow600: Color = Color(hex: "ca8a04")!
        public static let yellow700: Color = Color(hex: "a16207")!
        public static let yellow800: Color = Color(hex: "854d0e")!
        public static let yellow900: Color = Color(hex: "713f12")!
        
        // Lime
        public static let lime50: Color = Color(hex: "f7fee7")!
        public static let lime100: Color = Color(hex: "ecfccb")!
        public static let lime200: Color = Color(hex: "d9f99d")!
        public static let lime300: Color = Color(hex: "bef264")!
        public static let lime400: Color = Color(hex: "a3e635")!
        public static let lime500: Color = Color(hex: "84cc16")!
        public static let lime600: Color = Color(hex: "65a30d")!
        public static let lime700: Color = Color(hex: "4d7c0f")!
        public static let lime800: Color = Color(hex: "3f6212")!
        public static let lime900: Color = Color(hex: "365314")!
        
        // Green
        public static let green50: Color = Color(hex: "f0fdf4")!
        public static let green100: Color = Color(hex: "dcfce7")!
        public static let green200: Color = Color(hex: "bbf7d0")!
        public static let green300: Color = Color(hex: "86efac")!
        public static let green400: Color = Color(hex: "4ade80")!
        public static let green500: Color = Color(hex: "22c55e")!
        public static let green600: Color = Color(hex: "16a34a")!
        public static let green700: Color = Color(hex: "15803d")!
        public static let green800: Color = Color(hex: "166534")!
        public static let green900: Color = Color(hex: "14532d")!
        
        // Emerald
        public static let emerald50: Color = Color(hex: "ecfdf5")!
        public static let emerald100: Color = Color(hex: "d1fae5")!
        public static let emerald200: Color = Color(hex: "a7f3d0")!
        public static let emerald300: Color = Color(hex: "6ee7b7")!
        public static let emerald400: Color = Color(hex: "34d399")!
        public static let emerald500: Color = Color(hex: "10b981")!
        public static let emerald600: Color = Color(hex: "059669")!
        public static let emerald700: Color = Color(hex: "047857")!
        public static let emerald800: Color = Color(hex: "065f46")!
        public static let emerald900: Color = Color(hex: "064e3b")!
        
        // Teal
        public static let teal50: Color = Color(hex: "f0fdfa")!
        public static let teal100: Color = Color(hex: "ccfbf1")!
        public static let teal200: Color = Color(hex: "99f6e4")!
        public static let teal300: Color = Color(hex: "5eead4")!
        public static let teal400: Color = Color(hex: "2dd4bf")!
        public static let teal500: Color = Color(hex: "14b8a6")!
        public static let teal600: Color = Color(hex: "0d9488")!
        public static let teal700: Color = Color(hex: "0f766e")!
        public static let teal800: Color = Color(hex: "115e59")!
        public static let teal900: Color = Color(hex: "134e4a")!
        
        // Cyan
        public static let cyan50: Color = Color(hex: "ecfeff")!
        public static let cyan100: Color = Color(hex: "cffafe")!
        public static let cyan200: Color = Color(hex: "a5f3fc")!
        public static let cyan300: Color = Color(hex: "67e8f9")!
        public static let cyan400: Color = Color(hex: "22d3ee")!
        public static let cyan500: Color = Color(hex: "06b6d4")!
        public static let cyan600: Color = Color(hex: "0891b2")!
        public static let cyan700: Color = Color(hex: "0e7490")!
        public static let cyan800: Color = Color(hex: "155e75")!
        public static let cyan900: Color = Color(hex: "164e63")!
        
        // Sky
        public static let sky50: Color = Color(hex: "f0f9ff")!
        public static let sky100: Color = Color(hex: "e0f2fe")!
        public static let sky200: Color = Color(hex: "bae6fd")!
        public static let sky300: Color = Color(hex: "7dd3fc")!
        public static let sky400: Color = Color(hex: "38bdf8")!
        public static let sky500: Color = Color(hex: "0ea5e9")!
        public static let sky600: Color = Color(hex: "0284c7")!
        public static let sky700: Color = Color(hex: "0369a1")!
        public static let sky800: Color = Color(hex: "075985")!
        public static let sky900: Color = Color(hex: "0c4a6e")!
        
        // Blue
        public static let blue50: Color = Color(hex: "eff6ff")!
        public static let blue100: Color = Color(hex: "dbeafe")!
        public static let blue200: Color = Color(hex: "bfdbfe")!
        public static let blue300: Color = Color(hex: "93c5fd")!
        public static let blue400: Color = Color(hex: "60a5fa")!
        public static let blue500: Color = Color(hex: "3b82f6")!
        public static let blue600: Color = Color(hex: "2563eb")!
        public static let blue700: Color = Color(hex: "1d4ed8")!
        public static let blue800: Color = Color(hex: "1e40af")!
        public static let blue900: Color = Color(hex: "1e3a8a")!
        
        // Indigo
        public static let indigo50: Color = Color(hex: "eef2ff")!
        public static let indigo100: Color = Color(hex: "e0e7ff")!
        public static let indigo200: Color = Color(hex: "c7d2fe")!
        public static let indigo300: Color = Color(hex: "a5b4fc")!
        public static let indigo400: Color = Color(hex: "818cf8")!
        public static let indigo500: Color = Color(hex: "6366f1")!
        public static let indigo600: Color = Color(hex: "4f46e5")!
        public static let indigo700: Color = Color(hex: "4338ca")!
        public static let indigo800: Color = Color(hex: "3730a3")!
        public static let indigo900: Color = Color(hex: "312e81")!
        
        // Violet
        public static let violet50: Color = Color(hex: "f5f3ff")!
        public static let violet100: Color = Color(hex: "ede9fe")!
        public static let violet200: Color = Color(hex: "ddd6fe")!
        public static let violet300: Color = Color(hex: "c4b5fd")!
        public static let violet400: Color = Color(hex: "a78bfa")!
        public static let violet500: Color = Color(hex: "8b5cf6")!
        public static let violet600: Color = Color(hex: "7c3aed")!
        public static let violet700: Color = Color(hex: "6d28d9")!
        public static let violet800: Color = Color(hex: "5b21b6")!
        public static let violet900: Color = Color(hex: "4c1d95")!
        
        // Purple
        public static let purple50: Color = Color(hex: "faf5ff")!
        public static let purple100: Color = Color(hex: "f3e8ff")!
        public static let purple200: Color = Color(hex: "e9d5ff")!
        public static let purple300: Color = Color(hex: "d8b4fe")!
        public static let purple400: Color = Color(hex: "c084fc")!
        public static let purple500: Color = Color(hex: "a855f7")!
        public static let purple600: Color = Color(hex: "9333ea")!
        public static let purple700: Color = Color(hex: "7e22ce")!
        public static let purple800: Color = Color(hex: "6b21a8")!
        public static let purple900: Color = Color(hex: "581c87")!
        
        // Fuchsia
        public static let fuchsia50: Color = Color(hex: "fdf4ff")!
        public static let fuchsia100: Color = Color(hex: "fae8ff")!
        public static let fuchsia200: Color = Color(hex: "f5d0fe")!
        public static let fuchsia300: Color = Color(hex: "f0abfc")!
        public static let fuchsia400: Color = Color(hex: "e879f9")!
        public static let fuchsia500: Color = Color(hex: "d946ef")!
        public static let fuchsia600: Color = Color(hex: "c026d3")!
        public static let fuchsia700: Color = Color(hex: "a21caf")!
        public static let fuchsia800: Color = Color(hex: "86198f")!
        public static let fuchsia900: Color = Color(hex: "701a75")!
        
        // Pink
        public static let pink50: Color = Color(hex: "fdf2f8")!
        public static let pink100: Color = Color(hex: "fce7f3")!
        public static let pink200: Color = Color(hex: "fbcfe8")!
        public static let pink300: Color = Color(hex: "f9a8d4")!
        public static let pink400: Color = Color(hex: "f472b6")!
        public static let pink500: Color = Color(hex: "ec4899")!
        public static let pink600: Color = Color(hex: "db2777")!
        public static let pink700: Color = Color(hex: "be185d")!
        public static let pink800: Color = Color(hex: "9d174d")!
        public static let pink900: Color = Color(hex: "831843")!
        
        // Rose
        public static let rose50: Color = Color(hex: "fff1f2")!
        public static let rose100: Color = Color(hex: "ffe4e6")!
        public static let rose200: Color = Color(hex: "fecdd3")!
        public static let rose300: Color = Color(hex: "fda4af")!
        public static let rose400: Color = Color(hex: "fb7185")!
        public static let rose500: Color = Color(hex: "f43f5e")!
        public static let rose600: Color = Color(hex: "e11d48")!
        public static let rose700: Color = Color(hex: "be123c")!
        public static let rose800: Color = Color(hex: "9f1239")!
        public static let rose900: Color = Color(hex: "881337")!
    }
}
