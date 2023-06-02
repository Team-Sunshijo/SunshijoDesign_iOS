import SwiftUI

public struct SDTextField: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    var isDisabled: Bool
    var isSecure: Bool
    var borderColor: Color

    public init(
        title: String = "",
        placeholder: String = "",
        text: Binding<String>,
        isDisabled: Bool = false,
        isSecure: Bool = false,
        borderColor: Color = Color.GrayScale.gray300

    ) {
        self.title = title
        self.placeholder = placeholder
        self._text = text
        self.isDisabled = isDisabled
        self.isSecure = isSecure
        self.borderColor = borderColor
    }
    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            if !title.isEmpty {
                Text(title)
                    .sdText(type: .medium14)
            }
            if !isSecure {
                TextField(placeholder, text: $text)
                    .modifier(SDTextFieldModifier(
                        text: text,
                        isDisabled: isDisabled,
                        borderColor: borderColor
                    ))
            } else {
                SecureField(placeholder, text: $text)
                    .modifier(SDTextFieldModifier(
                        text: text,
                        isDisabled: isDisabled,
                        borderColor: borderColor
                    ))
            }
                
        }
        .padding(.bottom, 25)
    }
}

struct SDTextFieldModifier: ViewModifier {
    
    @FocusState private var isFocusing: Bool
    
    var text: String
    var isDisabled: Bool
    var borderColor: Color
    
    func body(content: Content) -> some View {
        content
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .frame(height: 40, alignment: .center)
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            .border(Color.GrayScale.gray200, width: 1)
            .background(Color.GrayScale.white)
            .cornerRadius(5)
            .font(.system(
                size: 12,
                weight: .regular
            ))
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(getStrokeColor())
            }
            .foregroundColor(getTextColor())
            .accentColor(.GrayScale.gray800)
            .disabled(isDisabled)
            .focused($isFocusing)
    }
    
    
    private func getTextColor() -> Color {
        if isDisabled || text.isEmpty {
            return .GrayScale.gray400
        } else {
            return .GrayScale.gray800
        }
    }

    private func getBackgroundColor() -> Color {
        if isDisabled || text.isEmpty {
            return .GrayScale.gray50
        } else {
            return .clear
        }
    }

    private func getStrokeColor() -> Color {
        if isDisabled {
            return .GrayScale.gray300
        } else if isFocusing {
            return borderColor
        } else {
            return .GrayScale.gray300
        }
    }
    
}

struct SDTextField_Preview: PreviewProvider {
    static var previews: some View {
        SDTextFieldPreview()
    }
}
