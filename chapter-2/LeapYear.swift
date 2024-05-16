
import XCTest


func isLeap(_ year: Int) -> Bool {
    guard year % 400 != 0 else { return true}
    guard year % 100 != 0 else { return false }
    return year % 4 == 0
}

class LeapYearTests: XCTestCase {
  func testEvenlyDivisibleBy4IsLeap() {
    XCTAssertTrue(isLeap(2020))
  }

  func testEvenlyDivisibleBy100IsNotLeap() {
      XCTAssertFalse(isLeap(2100))
  }

  func testEvenlyDivisibleBy400IsLeap() {
      XCTAssertTrue(isLeap(2000))
  }

  func testNotEvenlyDivisibleBy4Or400IsNotLeap() {
      XCTAssertFalse(isLeap(2021))
  }
}
