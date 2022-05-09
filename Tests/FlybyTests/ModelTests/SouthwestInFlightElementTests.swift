//
//  SouthwestInFlightElementTests.swift
//  
//
//  Created by Dan Hart on 5/9/22.
//

import XCTest
@testable import Flyby

class SouthwestInFlightElementTests: XCTestCase {
    func doNotTestDeserialization() {
        let bundle = Bundle(for: type(of: self))
        guard let path = bundle.path(forResource: "southwest-flight-example-response", ofType: "json"),
                let url = URL(string: path),
                let jsonData = try? Data(contentsOf: url) else { return XCTFail("Unable to get json file from bundle") }

        let inFlightResponse = try? SouthwestInFlightElement(data: jsonData)
        XCTAssertNotNil(inFlightResponse)
    }
}
