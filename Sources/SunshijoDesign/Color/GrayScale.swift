import SwiftUI

public extension Color {
    struct GrayScale { }
}
// MARK: - GrayScale
public extension Color.GrayScale {
    static let gray50:  Color = #colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1).color
    static let gray100: Color = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1).color
    static let gray200: Color = #colorLiteral(red: 0.9176470588, green: 0.9058823529, blue: 0.9333333333, alpha: 1).color
    static let gray300: Color = #colorLiteral(red: 0.9098039269, green: 0.9098039269, blue: 0.9098039269, alpha: 1).color
    static let gray400: Color = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1).color
    static let gray500: Color = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1).color
    static let gray600: Color = #colorLiteral(red: 0.3999999762, green: 0.3999999762, blue: 0.3999999762, alpha: 1).color
    static let gray700: Color = #colorLiteral(red: 0.3019607663, green: 0.3019607663, blue: 0.3019607663, alpha: 1).color
    static let gray800: Color = #colorLiteral(red: 0.1607843041, green: 0.1607843041, blue: 0.1607843041, alpha: 1).color
    static let gray900: Color = #colorLiteral(red: 0.1019608006, green: 0.1019608006, blue: 0.1019608006, alpha: 1).color
}

// MARK: - White
public extension Color.GrayScale {
    static let white:   Color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).color
}

// MARK: - Black
public extension Color.GrayScale {
    static let black:   Color = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).color
}
