import XCTest
import SwiftTreeSitter
import TreeSitterBicepParams

final class TreeSitterBicepParamsTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_bicep_params())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Bicep Params grammar")
    }
}
