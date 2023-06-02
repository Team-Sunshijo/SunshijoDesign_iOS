import SwiftUI

public extension Color {
    struct Shadow { }
}
// MARK: - GrayScale
public extension Color.Shadow {
    static let authShadow: Color = #colorLiteral(red: 1, green: 0.6862745098, blue: 0, alpha: 0.1).color
    static let shadow: Color = #colorLiteral(red: 0.3960784314, green: 0.3960784314, blue: 0.3960784314, alpha: 0.1).color
}
