import SwiftUI

struct CalendarHeaderView: View {
    @Binding var date: Date
    var body: some View {
        HStack(spacing: 18) {
            Button {
                date.setLastMonth()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.GrayScale.gray900)
                    .frame(width: 18, height: 16)
            }
            Text(date.toString("MM월"))
            Button {
                date.setNextMonth()
            } label: {
                Image(systemName: "chevron.right")
                    .foregroundColor(.GrayScale.gray900)
                    .frame(width: 18, height: 16)
            }
        }
    }
}
