//
//  main.swift
//  hello-world-terminal
//
//  Created by Nils Grimmer on 29.05.22.
//

import Foundation

func sayHello(name: String) {
    print("Hello, \(name)...")
}

func printArgs(complete: Bool) {
    let args = CommandLine.arguments
    print("Es wurden \(args.count - 1) Parameter übergeben")
    var start = 1
    if (complete) {
        start = 0
    }
    for i in start..<args.count {
        print("Parameter \(i): \(args[i])")
    }
}

var username = NSUserName()
sayHello(name: username)
username = NSFullUserName()
sayHello(name: username)

printArgs(complete: true)
