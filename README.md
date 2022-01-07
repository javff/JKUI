# JKUI
JKUI is a package included in this project that provides UIComponents.

## Before you start to use.
JKUI uses a style themed setting that must be initialized.

### How to init

You must create a class that complies with the following protocol `ThemeColorTemplate`, and another class that following `ThemeFontTemplate` protocol.

```
final class ThemeColor: ThemeColorTemplate {
    public let acent: Color = Color(hex: "#3483FA")
 }

final class ThemeFont: ThemeFontTemplate {
    public var titleL: Font = .system(size: 16)
    ...
}
```

And configure the `ThemeManager`

```
@main
struct JJUITestAppApp: App {
    
    var body: some Scene {
        let themeColor = ThemeColor()
        let themeFont = ThemeFont()
        let theme = ThemeConfiguration(color: themeColor, font: themeFont)
        ThemeManager.configure(theme: theme)
        return WindowGroup {
            ContentView()
              
        }
    }
}
```


## List of components

### MainButton

This UIComponents represent a button with standard look and feel. [Full Description how to use](https://github.com/javff/ProductPage/wiki/JJUIButton)

<img src="https://user-images.githubusercontent.com/18092648/147785806-84e09eff-954e-4134-98aa-bb7cc88b1865.png" width="200" height="400" />


### ProgressIndicator


### Gallery
