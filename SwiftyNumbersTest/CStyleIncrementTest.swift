//
//  CStyleIncrementTest.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import XCTest

class CStyleIncrementTest: XCTestCase {

    /// Test C-Style increment
    func testPostfixIncrement() {
        var a = 5
        XCTAssert(a++ == 5)
        XCTAssert(a == 6)
    }
    
    func testPrefixIncrement() {
        var a = 5
        XCTAssert(++a == 6)
        XCTAssert(a == 6)
    }
    
    /// Test C-Style decrement
    func testPostfixDecrement() {
        var a = 5
        XCTAssert(a-- == 5)
        XCTAssert(a == 4)
    }
    
    func testPrefixDecrement() {
        var a = 5
        XCTAssert(--a == 4)
        XCTAssert(a == 4)
    }
}
