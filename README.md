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
Beside Palette, Fulcrum defines other helpful colors:
```swift
let color = Color.almostClear   // Color.white with 0.001 opacity
let anotherColor = Color.random() // Random color
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
Fulcrum allows to instantiate a color that changes depending on current User Interface Style:
```swift
let backgroundColor = Color(light: .white, dark: .black)
```

# Fonts
Fulcrum provides a standarized sizes of `System` font:
```swift
let smallFont = Font.System.extraSmall
let hugeFont = Font.System.extraLarge9
```

This is the list of available fonts:

| Name          | Size (pt) |
|---------------|-----------|
| extraSmall    | 8         |
| small         | 12        |
| standard      | 14        |
| medium        | 16        |
| systemControl | 16        |
| large         | 18        |
| extraLarge    | 20        |
| extraLarge2   | 24        |
| extraLarge3   | 30        |
| extraLarge4   | 36        |
| extraLarge5   | 48        |
| extraLarge6   | 60        |
| extraLarge7   | 72        |
| extraLarge8   | 96        |
| extraLarge9   | 128       |

# Spacing
Fulcrum provides a standarized spacing:
```swift
let small = Spacing.small
let huge = Spacing.extraLarge9
```

This is the list of available spacings:
| Name          | Size      |
|---------------|-----------|
| zero          | 0         |
| mini          | 2         |
| extraSmall    | 4         |
| small         | 6         |
| medium        | 8         |
| standard      | 10        |
| largish       | 14        |
| large         | 16        |
| extraLarge    | 20        |
| extraLarge2   | 24        |
| extraLarge3   | 30        |
| extraLarge4   | 36        |
| extraLarge5   | 48        |
| extraLarge6   | 60        |
| extraLarge7   | 72        |
| extraLarge8   | 96        |
| extraLarge9   | 128       |
