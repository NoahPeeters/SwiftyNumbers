//
//  Vector2DTest.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import XCTest

class Vector2DTest: XCTestCase {

    func vectorInit() {
        let vector: Vector2D<Int> = [5, 6]
        
        XCTAssert(vector.x == 5)
        XCTAssert(vector.y == 5)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
