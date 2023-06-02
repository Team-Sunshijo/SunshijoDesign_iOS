import SwiftUI

struct SDTextFieldPreview: View {
    @State var text: String = ""
    var body: some View {
        VStack(spacing: 16) {

            SDTextField(
                title: "로그인",
                placeholder: "아이디 입력",
                text: $text
            )
            .padding(.horizontal, 30)
            SDTextField(
                title: "로그인",
                placeholder: "아이디 입력",
                text: $text,
                borderColor: Color.Primary.main
            )
            .padding(.horizontal, 30)
            SDTextField(
                title: "로그인",
                placeholder: "아이디 입력",
                text: $text,
                isSecure: true
            )
            .padding(.horizontal, 30)
            SDTextField(
                title: "로그인",
                placeholder: "아이디 입력",
                text: $text
            )
            .padding(.horizontal, 30)
            SDTextField(
                title: "로그인",
                placeholder: "아이디 입력",
                text: $text
            )
            .padding(.horizontal, 30)
        }
    }
}
