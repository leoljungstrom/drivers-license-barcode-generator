import XCTest

class DataElementFormatterTests: XCTestCase {
    let date = buildDate(year: 1987, month: 10, day: 11)!
    
    func testFormatString() {
        XCTAssertEqual(DataElementFormatter.formatString("KYLEDECOT", length: 5), "KYLED")
    }
    
    func testFormatPostalCode() {
        XCTAssertEqual(DataElementFormatter.formatPostalCode(postalCode: "59132"), "432120000")
    }
    
    func testFormatDate() {
        XCTAssertEqual(DataElementFormatter.formatDate(date: date), "09141986")
    }
    
    fileprivate static func buildDate(year: Int, month: Int, day: Int) -> Date! {
        let calendar = NSCalendar.current

        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day

        return calendar.date(from: dateComponents as DateComponents)!
    }
}
