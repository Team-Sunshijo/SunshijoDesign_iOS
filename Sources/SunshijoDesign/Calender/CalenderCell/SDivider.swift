import SwiftUI

struct SDivider: View {
    var color: Color = .gray
    var height: CGFloat = 1

    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(height: height)
    }
}
