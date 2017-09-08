//
//  Vector2D.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

public struct Vector2D<DimensionType: VectorDimensionType>: CustomStringConvertible, Hashable {
    public typealias Element = DimensionType
    
    var x: DimensionType
    var y: DimensionType
    
    public init(x: DimensionType, y: DimensionType) {
        self.x = x
        self.y = y
    }
    
    public init(_ x: DimensionType, _ y: DimensionType) {
        self.init(x: x, y: y)
    }
    
    public var arrayRepresented: [DimensionType] {
        return [x, y]
    }
    
    public var tuppleRepresented: (x: DimensionType, y: DimensionType) {
        return (x: x, y: y)
    }
    
    public var hashValue: Int {
        return x.hashValue ^ y.hashValue
    }
    
    
    public static prefix func -(vector: Vector2D) -> Vector2D {
        return Vector2D(-vector.x, -vector.y)
    }
    
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func ==(lhs: Vector2D<DimensionType>, rhs: Vector2D<DimensionType>) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    /// A textual representation of this instance.
    ///
    /// Instead of accessing this property directly, convert an instance of any
    /// type to a string by using the `String(describing:)` initializer.
    public var description: String {
        return "(\(x)|\(y))"
    }
}

extension Vector2D: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: DimensionType...) {
        self.x = elements[0]
        self.y = elements[1]
    }
}

extension Vector2D: Addable {
    public static func +(lhs: Vector2D, rhs: Vector2D) -> Vector2D {
        return Vector2D(lhs.x + rhs.x, lhs.y + rhs.y)
    }
    
    public static func +=(lhs: inout Vector2D, rhs: Vector2D) {
        lhs.x += rhs.x
        lhs.y += rhs.y
    }
}

extension Vector2D: Subtractable {
    public static func -(lhs: Vector2D, rhs: Vector2D) -> Vector2D {
        return Vector2D(lhs.x - rhs.x, lhs.y - rhs.y)
    }
    
    public static func -=(lhs: inout Vector2D, rhs: Vector2D) {
        lhs.x -= rhs.x
        lhs.y -= rhs.y
    }
}

extension Vector2D {
    public static func *(vector: Vector2D, factor: DimensionType) -> Vector2D {
        return Vector2D(vector.x * factor, vector.y * factor)
    }
    
    public static func *(factor: DimensionType, vector: Vector2D) -> Vector2D {
        return Vector2D(vector.x * factor, vector.y * factor)
    }
    
    public static func *=(vector: inout Vector2D, factor: DimensionType) {
        vector.x *= factor
        vector.y *= factor
    }
    
    public static func /(vector: Vector2D, factor: DimensionType) -> Vector2D {
        return Vector2D(vector.x / factor, vector.y / factor)
    }
    
    public static func /=(vector: inout Vector2D, factor: DimensionType) {
        vector.x /= factor
        vector.y /= factor
    }
}
