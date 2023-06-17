import Foundation

extension String {
    func toDate(_ date: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = date
        return dateFormatter.date(from: self) ?? Date()
    
    }
}
