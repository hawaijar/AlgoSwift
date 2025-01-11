import XCTest
@testable import TheAlgoPractices

class TheAlgoPracticesTest: XCTestCase {
    func testAddition() {
        let result = myMul(2, 4)
        XCTAssertEqual(result, 8, "2 x 4 should equal 8")
    }
    func testCommonCharacters() {
        let result = commonCharacters(["abc", "bcd", "cbad"])
        XCTAssertEqual(Set(result), Set(["b", "c"]))
    }
    func testGenerateDocument() {
        let result = generateDocument("Bste!hetsi ogEAxpelrt x ", "AlgoExpert is the Best!")
        XCTAssertEqual(result, true)
    }
}
