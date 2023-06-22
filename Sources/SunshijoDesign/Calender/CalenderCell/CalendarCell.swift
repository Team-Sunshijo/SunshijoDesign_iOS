import SwiftUI

struct CalendarCell: View {
    let date: Date
    let specialDate: [Date]
    let count: Int
    let startingSpaces: Int
    let daysInMonth: Int
    let daysInPrevMonth: Int
    
    
    var body: some View {
        Text(checkMonthType().dayToString())
            .sdText(
                type: .regular16,
                textColor: textColor(type: checkMonthType().monthType)
            )
            .frame(width: checkSize(), height: checkSize())
    }
    
    func textColor(type: MonthType) -> Color {
        if Int(date.toString("d")) == count - startingSpaces && Date().toString("yyyy MM") == date.toString("yyyy MM") {
            return .black
        } else if type == .current {
            return .black
        } else {
            return .GrayScale.gray500
        }
    }
    func checkMonthType() -> Month {
        if count <= startingSpaces {
            let day = daysInPrevMonth + count - startingSpaces
            return Month(monthType: .previous, day: day)
        } else if count - startingSpaces > daysInMonth {
            let day = count - startingSpaces - daysInMonth
            return Month(monthType: .next, day: day)
        } else {
            let day = count - startingSpaces
            return Month(monthType: .current, day: day)
        }
    }
    func borderColor() -> Color {
        return specialDate.filter {
            $0.toString("yyyy MM") == date.toString("yyyy MM") && $0.toString("yyyy MM dd") != Date().toString("yyyy MM dd")
        }
        .map { Int($0.toString("d")) }
        .contains { $0 == count - startingSpaces } ? .Primary.main : .white
    }
    func checkSize() -> CGFloat {
        specialDate.filter {
            $0.toString("yyyy MM") == date.toString("yyyy MM") && $0.toString("dd") != date.toString("dd")
        }
        .map { Int($0.toString("d")) }
        .contains { $0 == count - startingSpaces } ? 20 : 20
    }
    
}

struct CalendarCell_Previews: PreviewProvider {
    static var previews: some View {
        CalendarCell(date: Date(), specialDate: [], count: 1, startingSpaces: 1, daysInMonth: 1, daysInPrevMonth: 1)
    }
}
