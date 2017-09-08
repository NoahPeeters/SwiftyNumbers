//
//  VectorDimensionType.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

public protocol VectorDimensionType: Addable, Subtractable, Multiplicable, Divideable, Negatable, CustomStringConvertible, Hashable, Equatable {}

extension Int:  VectorDimensionType {}
extension Int8:  VectorDimensionType {}
extension Int16: VectorDimensionType {}
extension Int32: VectorDimensionType {}
extension Int64: VectorDimensionType {}

extension Float:  VectorDimensionType {}
extension Double:  VectorDimensionType {}
extension Float80:  VectorDimensionType {}

extension CGFloat: VectorDimensionType {}
