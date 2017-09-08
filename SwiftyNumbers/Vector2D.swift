//
//  Vector2D.swift
//  SwiftyNumbers
//
//  Created by Noah Peeters on 08.09.17.
//  Copyright © 2017 Noah Peeters. All rights reserved.
//

import Foundation

public struct Vector2D<DimensionType: VectorDimensionType> {
    public typealias Element = DimensionType
    
    var x: DimensionType
    var y: DimensionType
}

extension Vector2D: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: DimensionType...) {
        self.x = elements[0]
        self.y = elements[1]
    }
}
