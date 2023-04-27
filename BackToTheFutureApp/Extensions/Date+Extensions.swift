import Foundation

extension Date {
    
    func dateAfter(years: Int) -> Date? {
        let today = Date()
        var dateComponent = DateComponents()
        dateComponent.year = years

        return Calendar.current.date(byAdding: dateComponent, to: today)
    }
    
    func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        return dateFormatter.string(from: self)
    }
}
