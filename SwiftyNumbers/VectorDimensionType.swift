//
//  VectorDimensionType.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

public protocol VectorDimensionType: Addable, Subtractable {}

extension Int:  VectorDimensionType {}
extension Int8:  VectorDimensionType {}
extension Int16: VectorDimensionType {}
extension Int32: VectorDimensionType {}
extension Int64: VectorDimensionType {}

extension UInt:  VectorDimensionType {}
extension UInt8:  VectorDimensionType {}
extension UInt16: VectorDimensionType {}
extension UInt32: VectorDimensionType {}
extension UInt64: VectorDimensionType {}

extension Float:  VectorDimensionType {}
extension Double:  VectorDimensionType {}
extension Float80:  VectorDimensionType {}
