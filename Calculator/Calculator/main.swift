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

//mathStuffFactory(opString: <#T##String#>)


//========================================================================================================================

var addition = "0.0 + 0.0"
var additionArray = addition.components(separatedBy: " ") // seperating String into individual elements in an array

var addEquationElement1 = Double(additionArray[0]) //converting String "0.0" to
var addEquationElement2 = Double(additionArray[2]) //here number is of type "Int?"

//using Forced Unwrapping

if (addEquationElement1 != nil) && addEquationElement2 != nil {
 //string is converted to Int
}

print(additionArray)





//========================================================================================================================

print("Hello, my name is Terminator & I'm the Most powerful calculator on the PLANET 🌎")

print("Enter type of calculation you want me to perform, Enter 1 (regular) or 2 (high order)")

let calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 1
    
    switch calculationType {
    case 1 :
        print("Enter your SIMPLE EQUATION (TWO NUMBERS ONLY)")
    default:
        print("ERROR, CHOOSE EITHER 1 or 2")
        
        
}
   
        

































//        if "+"  {
//            //print("What TWO doubles would you like to ADD")
//            closureOperation = mathStuffFactory(opString: "+")
//            calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 100
//            //result = closureOperation(Double, Double)
//
//
//        } else if "-" {
//            //print("What TWO doubles numbers would you like to SUBTRACT")
//            closureOperation = mathStuffFactory(opString: "-")
//            calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 100
//        }
//        else if "*" {
//            //print("What TWO doubles numbers would you like to MULTIPLY")
//            closureOperation = mathStuffFactory(opString: "*")
//            calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 100
//        }
//        else if "/" {
//            //print("What TWO doubles numbers would you like to DIVIDE")
//            closureOperation = mathStuffFactory(opString: "/")
//            calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 100
//        }
//
//    }
//while true

