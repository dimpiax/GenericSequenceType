//
//  Generators.swift
//  Generic SequenceType
//
//  Created by Pilipenko Dima on 4/4/15.
//  Copyright (c) 2015 Pilipenko Dima. All rights reserved.
//

import Foundation

// Protocols
protocol GeneratorInitializer {
    typealias Element
    
    init(items: [Element]?)
}

// Generators
struct RandomGenerator<T>: GeneratorInitializer, GeneratorType {
    private var _list: [T]?
    private var _index: Int
    
    init(items: [T]?) {
        _list = items
        _index = 0
    }
    
    mutating func next() -> T? {
        if _list == nil || _list!.isEmpty {
            return nil
        }
        
        _index = Int(arc4random_uniform(UInt32(_list!.count)))
        return _list!.removeAtIndex(_index)
    }
}

struct IteratorGenerator<T>: GeneratorInitializer, GeneratorType {
    private var _list: [T]?
    private var _index: Int
    
    init(items: [T]?) {
        _list = items
        _index = 0
    }
    
    mutating func next() -> T? {
        if _list == nil || _list!.isEmpty {
            return nil
        }
        
        return _list!.removeAtIndex(0)
    }
}

struct OddGenerator<T>: GeneratorInitializer, GeneratorType {
    private var _list: [T]?
    private var _index: Int
    
    init(items: [T]?) {
        _list = items
        _index = -1
    }
    
    mutating func next() -> T? {
        _index += 2
        if _list == nil || _index >= _list!.count {
            return nil
        }
        
        return _list![_index]
    }
}