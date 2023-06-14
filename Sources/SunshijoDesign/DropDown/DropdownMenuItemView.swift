import SwiftUI

struct DropdownMenuItemView: View {
    @Binding var isSelecting: Bool
    @Binding var selectionId: Int
    @Binding var selectiontitle: String
    
    let item: DropdownItem
    
    var body: some View {
        Button(action: {
            isSelecting = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                selectionId = item.id
            }
            selectiontitle = item.title
            item.onSelect()
        }) {
            HStack(spacing: 20) {
                Text(item.title)
                    .sdText(type: .medium16, textColor: .GrayScale.gray900)
                Image(systemName: "checkmark")
                    .font(.system(size: 14, weight: .bold))
                    .opacity(selectionId == item.id ? 1 : 0)
            }
            .frame(height: 20)
            .foregroundColor(.black)
        }
    }
    
}
