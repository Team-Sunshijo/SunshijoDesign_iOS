import SwiftUI

struct DropdownPreview: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("학사일정")
                .sdText(type: .semiBold24, textColor: .GrayScale.gray900)
                .padding(.top, 45)
            HStack {
                DropdownMenu(items: (1...12).map { index in
                    DropdownItem(id: index, title: "\(index)월", onSelect: {})
                })
                .padding(.leading, 44)
                Spacer()
            }
        }
     }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownPreview()
    }
}
