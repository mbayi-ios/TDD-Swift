
import XCTest


func isLeap(_ year: Int) -> Bool {
    guard year % 400 != 0 else { return true}
    guard year % 100 != 0 else { return false }
    return year % 4 == 0
}

class LeapYearTests: XCTestCase {
  func testEvenlyDivisibleBy4IsLeap() {
      let year = 2020 // Arrange - Prepare the inputs
      
      let leap = isLeap(year) // Act - Exercise the behavior under test
      
      XCTAssertTrue(leap) // Assert - Verify the output matches the expectation
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
