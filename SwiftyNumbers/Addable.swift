//
//  Addable.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

/// A protocol for all types which can be added to itself.
public protocol Addable {
    static func +(lhs: Self, rhs: Self) -> Self
    static func +=(lhs: inout Self, rhs: Self)
}

public protocol NumberAddable: Addable, ExpressibleByIntegerLiteral {}

extension Int:  NumberAddable {}
extension Int8:  NumberAddable {}
extension Int16: NumberAddable {}
extension Int32: NumberAddable {}
extension Int64: NumberAddable {}

extension UInt:  NumberAddable {}
extension UInt8:  NumberAddable {}
extension UInt16: NumberAddable {}
extension UInt32: NumberAddable {}
extension UInt64: NumberAddable {}

extension Float:  NumberAddable {}
extension Double:  NumberAddable {}
extension Float80:  NumberAddable {}
