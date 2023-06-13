import SwiftUI

public enum FontType {

    case semiBold32
    case semiBold24
    case semiBold20
    case semiBold18
    case semiBold16

    case regular32
    case regular24
    case regular16
    case regular14
    case regular12
    case regular10

    case medium16
    case medium14
    case medium12
    case medium10
}

extension FontType {

    var fontSize: CGFloat {
        switch self {
        case .regular32, .semiBold32: return 32
        case .semiBold24, .regular24: return 24

        case .semiBold20: return 20
        case .semiBold18: return 18

        case .semiBold16, .regular16, .medium16: return 16

        case .regular14, .medium14: return 14
        case .regular12, .medium12: return 12
            
        case .regular10, .medium10: return 10

        }
    }

    var fontWeight: UIFont.Weight {
        switch self {
        case .semiBold32, .semiBold24, .semiBold20, .semiBold18, .semiBold16: return .bold

        case .regular32, .regular24, .regular16, .regular14, .regular12, .regular10: return .regular

        case .medium16, .medium14, .medium12, .medium10: return .medium

        }
    }

    var lineHeight: CGFloat {
        switch self {
        case .medium10: return 18
        case .medium12: return 20
        case .medium14: return 22
        case .medium16, .semiBold16: return 24

        case .regular10: return 14
        case .regular12: return 16
        case .regular14: return 18
        case .regular16: return 20
        case .regular24: return 28
        case .regular32: return 36

        case .semiBold18: return 26
        case .semiBold20: return 28
        case .semiBold24: return 32
        case .semiBold32: return 40

        }
    }

    var defaultColor: Color {
        return Color.GrayScale.gray900
    }

}
