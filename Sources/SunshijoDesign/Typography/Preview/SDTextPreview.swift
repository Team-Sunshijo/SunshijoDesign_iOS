import SwiftUI

struct SDTextPreview: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Heading 1").sdText(type: .medium12)
            }
        }
    }
}
