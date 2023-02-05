# Fulcrum

A utility SwiftUI framework to speed up applications development.

# Colors

## Palette
Fulcrum extends SwiftUI's `Color` with `Palette` namespace that constain predefined colors:
```swift

let primaryColor = Color.Palette.red400
let textOnPrimatry = Color.Palette.neutral50
```

Fulcrum Color palette is base on [Tailwind](https://tailwindcss.com/docs/customizing-colors):
![Fulcrum_Color_Palette](https://user-images.githubusercontent.com/6362174/216835644-1962a9ec-8242-4fc1-8d1c-495e30603a00.jpg)

## Other colors
Beside Palette Fulcrum defines other helpful colors:
```swift
let color = Color.almostClear
let anotherColor = Color.random()
```

## Hex
Fulcrum allows to instantiate `Color` from hex string:
```swift
let red = Color("FF0000") // RRGGBB
let alsoRed = Color("#FF0000") 
let anotherRed = Color("0xFF0000")
let threeDigitColor = Color("F9A") // Same as FF99AA
let opaqueWhite = Color("FFFFF00") // RRGGBBAA
let nilColor = Color("Hello") // returns nil
```

## Appearance Mode
Fulcrum allows to instantiate a color depending on current User Interface Style:
```swift
let backgroundColor = Color(light: .white, dark: .black)
```