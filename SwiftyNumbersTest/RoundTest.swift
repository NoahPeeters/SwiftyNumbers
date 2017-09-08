//
//  RoundTest.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import XCTest

class RoundTest: XCTestCase {

    func testRound() {
        XCTAssert(round(Double.pi, toDecimalPlaces: 4) == 3.1416)
    }
}
