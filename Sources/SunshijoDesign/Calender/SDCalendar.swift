import SwiftUI

struct SDCalendar: View {
    @Binding var date: Date
    let specialDays: [Date]
    let weeks = ["일", "월", "화", "수", "목", "금", "토"]

    public init(date: Binding<Date>, specialDays: [Date]) {
        self._date = date
        self.specialDays = specialDays
    }
    
    var body: some View {
        let daysInMonth = date.getWeeksCountOfMonth()
        let firstDayOfMonth = date.getFirstOfMonth()
        let startingSpaces = firstDayOfMonth.startDayOfWeek()
        let weeksCountInMonth = date.getWeeksCountInMonth()
        let prevMonth = date.lastMonth()
        let daysInPrevMonth = prevMonth.getWeeksCountOfMonth()

        VStack(spacing: 15){
            HStack {
                CalendarHeaderView(date: $date)
                    .padding(.leading, 41)
                Spacer()
            }
            HStack(spacing: 35) {
                ForEach(weeks, id: \.self) { index in
                    Text(index)
                        .foregroundColor(index == "일" ? .red : (index == "토" ? .blue : .GrayScale.gray900))
                }
            }
            ForEach(0..<weeksCountInMonth, id: \.self) { row in
                HStack(spacing: 20) {
                    ForEach(1..<8, id:\.self) { day in
                        let count = (day + (row * 7))
                        CalendarCell(
                            date: date,
                            specialDate: specialDays,
                            count: count,
                            startingSpaces: startingSpaces,
                            daysInMonth: daysInMonth,
                            daysInPrevMonth: daysInPrevMonth
                        )
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarPreViews()
    }
}


