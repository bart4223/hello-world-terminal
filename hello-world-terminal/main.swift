//  main.swift
//  hello-world-terminal
//
//  Created by Nils Grimmer on 29.05.22.

/// [Apple](http://www.apple.de)

import Foundation

/// This function says Hello with name
///
/// author: Nils Grimmer
/// copyright: Nils Grimmer
///
/// - Parameter name: Name of Hello
func sayHello(name: String) {
    print("Hello, \(name)...");
}

func printArgs(complete: Bool) {
    let args = CommandLine.arguments;
    print("Es wurden \(args.count - 1) Parameter übergeben");
    var start = 1;
    if (complete) {
        start = 0;
    }
    for i in start..<args.count {
        print("Parameter \(i): \(args[i])");
    }
}

func printTempDir() {
    let temp = NSString(string: NSTemporaryDirectory())
        .appendingPathComponent("Hello");
    print(temp);
}

func printArray() {
    let data = [1, 2, 3, 4];
    print(data);
    /// **New Array**
    let newdata = data.map() {$0*$0};
    print(newdata);
}

// MARK: Lesson 0
var username = NSUserName();
sayHello(name: username);
username = NSFullUserName();
sayHello(name: username);

// MARK: Lesson 1
printArgs(complete: true);

// MARK: Lesson 2
printTempDir();
printArray();
