import XCTest
@testable import Tiro

final class TiroTests: XCTestCase {
    func testVersion() {
        let tiro = Tiro()
        XCTAssertEqual(tiro.version, "0.1.0")
    }
} 