//
//  PowerTest.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import XCTest

class PowerTest: XCTestCase {

    func testPowers() {
        XCTAssert(pow(10.0, 2) == 100.0)
        XCTAssert(pow(10, 2.0) == 100.0)
        XCTAssert(pow(10, 2) == 100.0)
    }

}
