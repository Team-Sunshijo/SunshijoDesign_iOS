import Foundation

var selectedDate: Date = Date()
extension Date {
    func toString(_ format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format

        return dateFormatter.string(from: self)
    }

    func getWeeksCountOfMonth() -> Int {
        return Calendar.current.range(of: .day, in: .month, for: self)?.count ?? 0
    }

    func getWeeksCountInMonth() -> Int {
        return Calendar.current.range(of: .weekOfMonth, in: .month, for: self)?.count ?? 0
    }
    
    func setCalendar(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 MM월"
    }
    //주 시작이 어떤 요일인지 알려주는 함수
    func startDayOfWeek() -> Int {
//        (Calendar.current.dateComponents([.weekday], from: self).weekday ?? 0) - 1
        return (Calendar.current.component(.weekday, from: self)) - 1
    }

    //주 시작이 어떤 요일인지 알려주는 함수
    func getWeekDay() -> Int {
        return (Calendar.current.dateComponents([.weekday], from: self).weekday ?? 0) - 1
    }

    func getFirstOfMonth() -> Date {
        let component = Calendar.current.dateComponents([.year, .month], from: self)
        return Calendar.current.date(from: component) ?? Date()
    }

    // 달이 몇 일로 이루어져 있는지 알려주는 함수
    func CountInMonth() -> Int {
        return Calendar.current.range(of: .day, in: .month, for: self)?.count ?? 0
    }
    // 저번달 값을 가져오는 함수
    func lastMonth() -> Date {
        return Calendar.current.date(byAdding: .month, value: -1, to: self) ?? Date()
    }
    //원하는 달을 가져오는 함수
    func getMonth(month: Int) -> Date {
        return Calendar.current.date(byAdding: .month, value: month  , to: self) ?? Date()
    }
    //현재날짜를 가져오는 함수
    func getCurrentDay() -> Int {
        return Calendar.current.dateComponents([.day], from: self).day ?? 0
    }
}
