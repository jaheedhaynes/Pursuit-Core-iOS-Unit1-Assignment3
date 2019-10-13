//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation
// takes in String, returns a closure of Doubles, and then returns a Double //

func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
    switch opString {
    case "+":
        return {x, y in x + y }
    case "-":
        return {x, y in x - y }
    case "*":
        return {x, y in x * y }
    case "/":
        return {x, y in x / y }
    default:
        return {x, y in x + y }
    }
}

var closureOperation = mathStuffFactory(opString: "+")
var result = closureOperation(45, 5)
print("result of operation is \(result)")



//========================================================================================================================

print("Hello, my name is Terminator & I'm the Most powerful calculator on the PLANET 🌎")

print("Enter type of calculation you want me to perform, Enter 1 (regular) or 2 (high order)")

var calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 1


repeat {
    
    if calculationType == 1 {
        closureOperation = mathStuffFactory(opString.random():"") {
            if "+" {
                print("What TWO doubles would you like to ADD")
                closureOperation = mathStuffFactory(opString: "+")
                calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 100
                
            } else if "-" {
                print("What TWO doubles numbers would you like to SUBTRACT")
                closureOperation = mathStuffFactory(opString: "-")
                calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 100
            }
            else if "*" {
                print("What TWO doubles numbers would you like to MULTIPLY")
                closureOperation = mathStuffFactory(opString: "*")
                calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 100
            }
            else if "/" {
                print("What TWO doubles numbers would you like to DIVIDE")
                closureOperation = mathStuffFactory(opString: "/")
                calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 100
            }
            
            
            
        }
    }
}

