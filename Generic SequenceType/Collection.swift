//
//  Collection.swift
//  Generic SequenceType
//
//  Created by Pilipenko Dima on 4/4/15.
//  Copyright (c) 2015 Pilipenko Dima. All rights reserved.
//

import Foundation

struct Collection<T, U: protocol<GeneratorType, GeneratorInitializer> where U.Element == T>: SequenceType {
    private var _items: [T]?
    
    init() {
        // empty
    }
    
    mutating func addItems(values: T...) {
        for value in values {
            addItem(value)
        }
    }
    
    mutating func addItem(value: T) {
        if _items == nil { _items = [] }
        _items!.append(value)
    }
    
    // *** PROTOCOLS
    // SequenceType
    func generate() -> U {
        return U(items: _items)
    }
}