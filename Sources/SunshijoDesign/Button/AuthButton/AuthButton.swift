import SwiftUI

public struct AuthButton: View {
    @Binding var isDisabled: Bool
    var text: String
    var action: () -> ()
    
    public init(
        isDisabled: Binding<Bool> = .constant(false),
        text: String,
        action: @escaping () -> ()
    ) {
        self._isDisabled = isDisabled
        self.text = text
        self.action = action
    }
    public var body: some View {
        VStack {
            Button(action: action) {
                Text(text)
                    .frame(maxWidth: .infinity)
                    .padding([.top, .bottom], 10)
                    .foregroundColor(Color.GrayScale.white)
                    .background(
                        isDisabled ? Color.Primary.main2 : Color.Primary.main
                    )
            }
            .cornerRadius(5)
            .frame(height: 40)
            .background(Color.white)
            .padding([.leading, .trailing], 70)
            .disabled(isDisabled)
        }
    }
}
struct AuthButton_Preview: PreviewProvider {
    static var previews: some View {
        AuthButton(
            text: "asfd",
            action: {}
        )
    }
}
