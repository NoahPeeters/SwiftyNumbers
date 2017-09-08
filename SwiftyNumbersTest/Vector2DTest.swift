//
//  Vector2DTest.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import XCTest

class Vector2DTest: XCTestCase {

    func testVectorInit() {
        let vector = Vector2D(x: 5, y: 6)
        
        XCTAssert(vector.x == 5)
        XCTAssert(vector.y == 6)
    }
    
    func testVectorInit2() {
        let vector = Vector2D(5, 6)
        
        XCTAssert(vector.x == 5)
        XCTAssert(vector.y == 6)
    }
    
    func testVectorArrayInit() {
        let vector: Vector2D = [5, 6]
        
        XCTAssert(vector.x == 5)
        XCTAssert(vector.y == 6)
    }
    
    func testStringRepresentable() {
        let vector = Vector2D(x: 5, y: 6)
        XCTAssert(vector.description == "(5|6)")
    }
    
    func testArrayRepresentable() {
        let vector = Vector2D(x: 5, y: 6)
        XCTAssert(vector.arrayRepresented == [5, 6])
    }
    
    func testTupleRepresentable() {
        let vector = Vector2D(x: 5, y: 6)
        XCTAssert(vector.tuppleRepresented == (5, 6))
    }
    
    func testEquatable() {
        let vector = Vector2D(x: 5, y: 6)
        
        XCTAssert(vector == vector)
        XCTAssert(vector == [5, 6])
    }
    
    func testNegatable() {
        let vector1 = Vector2D(x: 5, y: -6)
        let vector2 = Vector2D(x: -5, y: 6)
        XCTAssert(vector1 == -vector2)
        XCTAssert(vector2 == -vector1)
    }
    
    func testAddition() {
        var vector = Vector2D(x: 5, y: 6)
        XCTAssert(vector + [1, -4] == [6, 2])
        
        vector += [1, -4]
        XCTAssert(vector == [6, 2])
    }
    
    func testSubtraction() {
        var vector = Vector2D(x: 5, y: 6)
        XCTAssert(vector - [1, -4] == [4, 10])
        
        vector -= [1, -4]
        XCTAssert(vector == [4, 10])
    }
    
    func testMultipication() {
        var vector = Vector2D(x: 5, y: 6)
        XCTAssert(vector * 4 == [20, 24])
        XCTAssert(4 * vector == [20, 24])
        
        vector *= 4
        XCTAssert(vector == [20, 24])
    }
    
    func testDivision() {
        var vector = Vector2D(x: 8, y: 6)
        XCTAssert(vector / 2 == [4, 3])
        
        vector /= 2
        XCTAssert(vector == [4, 3])
    }
}
