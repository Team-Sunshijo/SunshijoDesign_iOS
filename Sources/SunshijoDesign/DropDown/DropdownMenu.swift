import SwiftUI

struct DropdownMenu: View {
    @State var isSelecting = false
    @State var selectionTitle = ""
    @State var selectedRowId = 0
    let items: [DropdownItem]
    
    var body: some View {
        GeometryReader { _ in
            VStack(spacing: 0) {
                HStack {
                    Text(selectionTitle)
                        .sdText(type: .medium16, textColor: .GrayScale.gray900)
                    Spacer().frame(width: 6)
                    Image(systemName: "chevron.down")
                        .font(.system(size: 16, weight: .semibold))
                        .rotationEffect(.degrees( isSelecting ? -180 : 0))
                }
                .foregroundColor(.black)

                if isSelecting {
                    ScrollView {
                        VStack(spacing: 3) {
                            dropDownItemsList()
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                    .frame(height: 90)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .background(Color(uiColor: UIColor.systemBackground))
            .cornerRadius(10)
            .onTapGesture {
                isSelecting.toggle()
            }
            .onAppear {
                selectedRowId = items[0].id
                selectionTitle = items[0].title
            }
            .animation(.easeInOut(duration: 0.3))
        }
    }
    
    private func dropDownItemsList() -> some View {
        ForEach(items) { item in
            DropdownMenuItemView(isSelecting: $isSelecting, selectionId: $selectedRowId, selectiontitle: $selectionTitle, item: item)
        }
    }
}


struct CustomDropdownMenu_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
            HStack {
                DropdownMenu(items: (1...12).map { index in
                    DropdownItem(id: index, title: "\(index)월", onSelect: {})
                })
                .padding(.leading, 40)
                Spacer()
            }
        }
        
    }
}

extension View {
    func customDropdownMenu(items: [DropdownItem]) -> some View {
        ZStack {
            VStack {
                DropdownMenu(items: items)
                //                    .padding(.horizontal)
                Spacer()
            }
            .zIndex(10)
            self
                .offset(y: 60)
                .zIndex(1)
        }
    }
}
