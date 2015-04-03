//
//  AppDelegate.swift
//  Generic SequenceType
//
//  Created by Pilipenko Dima on 4/4/15.
//  Copyright (c) 2015 Pilipenko Dima. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // collection with simple generator
        var boxCol1 = Collection<Box, IteratorGenerator<Box>>()
        boxCol1.addItems(Box(name: "Maps", age: 12), Box(name: "Puzzles", age: 7), Box(name: "Books", age: 4))
        
        println("- simple iteration")
        for value in boxCol1 {
            println(value)
        }

        // collection with random generator
        var boxCol2 = Collection<Box, RandomGenerator<Box>>()
        boxCol2.addItems(Box(name: "Maps", age: 12), Box(name: "VHS", age: 1), Box(name: "Puzzles", age: 7), Box(name: "Books", age: 4))
        
        println("- random iteration")
        for value in boxCol2 {
            println(value)
        }
        
        // collection with odd generator
        var boxCol3 = Collection<Box, OddGenerator<Box>>()
        boxCol3.addItems(Box(name: "Maps", age: 12), Box(name: "Puzzles", age: 7), Box(name: "Books", age: 4), Box(name: "Photos", age: 72))
        
        println("- odd iteration")
        for value in boxCol3 {
            println(value)
        }
        
        return true
    }
}

struct Box: Printable {
    let name: String
    let age: Int
    
    var description: String {
        return "Box(name=\(name), age=\(age))"
    }
}