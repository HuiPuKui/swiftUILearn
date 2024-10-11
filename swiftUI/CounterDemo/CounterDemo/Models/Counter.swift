//
//  Counter.swift
//  CounterDemo
//
//  Created by HuiPuKui on 2024/10/12.
//

import Foundation

struct Counter {
    var count: Int = 0
    
    mutating func increaseByOne() {
        count += 1
    }
    
    mutating func decreaseByOne() {
        count -= 1
    }
}
