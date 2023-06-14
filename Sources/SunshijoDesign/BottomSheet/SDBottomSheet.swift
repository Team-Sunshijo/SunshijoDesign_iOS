import SwiftUI

public struct SDBottomSheet: View {

    @Environment(\.presentationMode) var presentationMode
    @State private var animate = false
    var title: String
    var fillButton: (text: String, action: () -> Void)
    var cancelButton: (text: String, action: () -> Void)
    
    public init(
        title: String,
        fillButton: (text: String, action: () -> Void),
        cancelButton: (text: String, action: () -> Void)
    ) {
        self.title = title
        self.fillButton = fillButton
        self.cancelButton = cancelButton
    }

    public var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.opacity(0.2).ignoresSafeArea()
                .opacity(animate ? 1.0 : 0.0)
            VStack {
                Spacer()
                Color.white
                    .edgesIgnoringSafeArea(.bottom)
                    .frame(height: CGFloat(27))
            }
            VStack(alignment: .leading, spacing: 12) {
                Text(title)
                    .sdText(type: .semiBold16, textColor: .GrayScale.black)
                Button {
                    self.dismissBottomSheet()
                    fillButton.action()
                } label: {
                    HStack {
                        Spacer()
                        Text(fillButton.text)
                            .sdText(type: .medium16, textColor: .GrayScale.white)
                            .padding(.vertical, 7)
                        Spacer()
                    }
                    .background(Color.Primary.main2)
                    .cornerRadius(8)
                }
                Button {
                    self.dismissBottomSheet()
                    fillButton.action()
                } label: {
                    HStack {
                        Spacer()
                        Text(cancelButton.text)
                            .sdText(type: .medium16, textColor: .GrayScale.gray700)
                            .padding(.vertical, 7)
                        Spacer()
                    }
                    .background(Color.GrayScale.white)
                    .cornerRadius(8)
                }
            }
            .padding(.horizontal, 27)
            .padding(.top, 22)
            .background(Color.white)
            .cornerRadius(16, [.topLeft, .topRight])
        }
        .onAppear {
            withAnimation(.default.speed(0.4)) {
                animate = true
            }
        }
        .onTapGesture {
            self.dismissBottomSheet()
        }
        .background(Background())
    }

    private func dismissBottomSheet() {
        self.animate = false
        self.presentationMode.wrappedValue.dismiss()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SDBottomSheetPreview()
    }
}
