import SwiftUI

struct SDBottomSheetPreview: View {
    @State var isPresented: Bool = false
    var body: some View {
        NavigationView {
            Button {
                isPresented = true
            } label: {
                Text("Test BottomSheet")
            }
            .sdBottomSheet(isPresented: $isPresented, sdBottomSheet: {
                SDBottomSheet(
                    title: "계정에서 로그아웃 하시겠어요?",
                    fillButton: (text: "로그아웃", action: { }),
                    cancelButton: (text: "취소", action: { })
                )
            })
            .navigationTitle("바텀시트")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

