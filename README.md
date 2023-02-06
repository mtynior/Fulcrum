# Fulcrum

A utility SwiftUI framework to speed up applications development.

# Colors

## Palette
Fulcrum extends SwiftUI's `Color` with `Palette` namespace that constain predefined colors:
```swift
import Fulcrum

let primaryColor = Color.Palette.red400
let textOnPrimatry = Color.Palette.neutral50
```

Fulcrum Color palette is base on [Tailwind](https://tailwindcss.com/docs/customizing-colors):
![Fulcrum_Color_Palette](https://user-images.githubusercontent.com/6362174/216835644-1962a9ec-8242-4fc1-8d1c-495e30603a00.jpg)

## Other colors
Beside Palette, Fulcrum defines other helpful colors:
```swift
import Fulcrum

let color = Color.almostClear   // Color.white with 0.001 opacity
let anotherColor = Color.random() // Random color
```

## Hex
Fulcrum allows to instantiate `Color` from hex string:
```swift
import Fulcrum

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
import Fulcrum

let backgroundColor = Color(light: .white, dark: .black)
```

# Fonts
Fulcrum provides a standarized sizes of `System` font:
```swift
import Fulcrum

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
import Fulcrum

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

# View modifiers
## Dismiss Keyboard on tap
This modifier dismisses keyboard when user tap on the view:
```swift
VStack {
  // ...
}
.dismissesKeyboardOnTap()
```

# View Extensions
## Fill Parent
Resizes the frame of a view so it fills its parent:
```swift
// Resizes frame in both axis
view1.fillParent() 

// Resizes frame only vertically
view2.fillParent(axis: .vertical) 

// Resizes frame horizontally with content, inside the frame, aligned to leading edge
view3.fillParent(axis: .horizontally, alignment: .leading)

```

## Erase to AnyView
Erases current view to opaque `AnyView`:
```swift
let anyView =  view1.eraseToAnyView()
```

## Hide View
Hides or shows the view:
```swift
// Hides view and preserves the layout
view1.hidden(true)

// Removes the view from the layout 
view1.hidden(true, shouldRemove: true)
```

## View + Condition
Transforms view based on the result of the condition:
```swift
@State var numberOfItems: Int

// if
view1.if(numberOfItems == 0) { originalView in
  originalView.background(Color.red)
}

// if + else
view1.if(
  numberOfItems == 0, 
  onTrueTransform: { originalView in
    originalView.background(Color.red)
  }, onFalseTransform: { originalView in
    originalView.background(Color.green)
  }
)
```

## View + Debug
Perform action when view is drawn on the screen. Action is triggered only in `Debug` mode.
```swift
view1.debugAction {
  // do something
}
```

Prints message in the console when view is drawn on the screen. Action is triggered only in `Debug` mode.
```swift
view1.debugPrint("Hello world")
```

Adds background to the view. The background is applied only in `Debug` mode
```swift
// Adds red background
view1.debugBackground()

// Adds specified background
view1.debugBackground(Color.yellow)
```

Adds border to the view. The borders is added only in `Debug` mode
```swift
// Adds 1pt red border
view1.debugBorder()

// Adds specified background
view1.debugBorder(Color.yellow, width: 2)
```