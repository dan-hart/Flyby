//
//  SouthwestInFlightElementTests.swift
//  
//
//  Created by Dan Hart on 5/9/22.
//

import XCTest
@testable import Flyby

class SouthwestInFlightElementTests: XCTestCase {
    func testDeserialization() {
        let inFlightResponse = try? SouthwestInFlightElement(ExampleData.response)
        XCTAssertNotNil(inFlightResponse)
    }
}
