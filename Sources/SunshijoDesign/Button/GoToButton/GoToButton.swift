import SwiftUI

struct GoToButton: View {
    var title: String
    var buttonTitle: String
    var action: () -> Void
    public init(
        title: String,
        buttonTitle: String,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.buttonTitle = buttonTitle
        self.action = action
    }
    var body: some View {
        HStack(alignment: .center, spacing: 9) {
            Text(title)
                .font(.system(size: 10, weight: .regular))
                .foregroundColor(Color.GrayScale.gray700)
            Button(buttonTitle, action: action)
                .font(.system(size: 10, weight: .regular))
                .foregroundColor(Color.GrayScale.gray900)
        }
        .padding(.top, 16)
    }
}
struct GoToButton_Preview: PreviewProvider {
    static var previews: some View {
        GoToButton(
            title: "계정이 없으신가요?",
            buttonTitle: "회원가입하기",
            action: {}
        )
    }
}
