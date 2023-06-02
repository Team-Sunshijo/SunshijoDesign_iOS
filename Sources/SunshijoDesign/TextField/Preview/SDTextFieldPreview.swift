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
            SDTextField(
                title: "로그인",
                placeholder: "아이디 입력",
                text: $text,
                borderColor: Color.Primary.main
            )
            SDTextField(
                title: "로그인",
                placeholder: "아이디 입력",
                text: $text,
                isSecure: true
            )
            SDTextField(
                title: "로그인",
                placeholder: "아이디 입력",
                text: $text
            )
            SDTextField(
                title: "로그인",
                placeholder: "아이디 입력",
                text: $text
            )
        }
    }
}
