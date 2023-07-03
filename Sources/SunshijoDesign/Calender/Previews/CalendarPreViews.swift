import SwiftUI

struct CalendarPreViews: View {
    @State var date = Date()
    let specialDate = [
        "2023 03 02".toDate("yyyy MM dd"),
        "2023 03 03".toDate("yyyy MM dd"),
        "2023 05 04".toDate("yyyy MM dd"),
        "2023 05 05".toDate("yyyy MM dd"),
        "2023 05 22".toDate("yyyy MM dd")
    ]
    var body: some View {
        SDCalendar(date: $date, specialDays: specialDate)
    }
}
