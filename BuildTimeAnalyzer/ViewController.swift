//
//  ViewController.swift
//  BuildTimeAnalyzer
//
//  Created by Alberto Ramon Janez on 20/5/16.
//  Copyright © 2016 arj. All rights reserved.
//

import UIKit

@objc protocol Foo {
    optional func fib(num: Int) -> Int
}

//protocol Foo {
//    func fib(num: Int) -> Int
//}

class ViewController: UIViewController, Foo {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...10 {
            let start = NSDate().timeIntervalSince1970
            for k in 1...40 {
                fib(k)
            }
            
            let end = NSDate().timeIntervalSince1970
            let duration = end - start
            print("Pass \(i) - \(duration)")
        }
    }

    func fib(num: Int) -> Int {
        if(num == 0) {
            return 0
        }
        if(num == 1) {
            return 1
        }
        return fib(num - 1) + fib(num - 2)
    }
}

