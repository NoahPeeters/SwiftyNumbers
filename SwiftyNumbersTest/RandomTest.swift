//
//  RandomTest.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import XCTest

class RandomTest: XCTestCase {

    static let valueTestCount = 100
    static let performanceTestCount = 1000000
    
    func testRandomInt() {
        for _ in 0..<RandomTest.valueTestCount {
            let randomNumber = 20.random()
            
            XCTAssert(randomNumber >= 0)
            XCTAssert(randomNumber < 20)
        }
    }
    
    func testRandomDouble() {
        for _ in 0..<RandomTest.valueTestCount {
            let randomNumber = 20.0.random()
            XCTAssert(randomNumber >= 0)
            XCTAssert(randomNumber < 20)
        }
    }
    
    func testRandomIntPerformance() {
        self.measure {
            for _ in 0..<RandomTest.performanceTestCount {
                let _ = 100.random()
            }
        }
    }

    func testRandomDoublePerformance() {
        self.measure {
            for _ in 0..<RandomTest.performanceTestCount {
                let _ = 100.0.random()
            }
        }
    }
}
