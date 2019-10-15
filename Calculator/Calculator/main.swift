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
//
//========================================================================================================================

print("Hello, my name is Terminator & I'm the Most powerful calculator on the PLANET 🌎")

print("Enter type of calculation you want me to perform, Enter 1 (regular) or 2 (high order)")

var calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 1

//var userInput = readLine() ?? "Pick a valid Integer"

switch calculationType {
    
case 1 :
    
    _ = Int(readLine() ?? "Pick a valid Integer") ?? 1
    print("Enter your SIMPLE EQUATION (TWO NUMBERS ONLY)")
    
    
case 2 :
    _ = Int(readLine() ?? "Pick a valid Integer") ?? 1
    print("Enter your HIGH ORDER FUNCTION (e.g filter 1, 2, 3, 4, 5, 23, 45 < 10)")
    
default:
    print("ERROR 🤬, CHOOSE EITHER 1 or 2")
}



//=============================================================================================================================================
//                      simple math (1) function
//=============================================================================================================================================

func math1Operation (_ str: String) -> Double {
    let strArray = str.components(separatedBy: " ")
    if strArray.count != 3 {
        return 0.0
    }
    
    let op1 = Double(strArray[0]) ?? 0.0
    let op2 = Double(strArray[2]) ?? 0.0
    let operator1 = strArray[1]
    let closureOp = mathStuffFactory(opString: operator1)
    let result = closureOp(op1, op2)
    return result
}






//========================================================================================================================
//                                                  Map Formula
//========================================================================================================================

func customMap(arr: [Double], closure: (Double) -> Double) -> [Double] {
    var transformedArr = [Double]()
    
    for num in arr {
        // perform transformation based on closure and append result in transformedArr
        transformedArr.append(closure(num))
    }
    
    return transformedArr
}










//======================================================================================================================================






switch calculationType {
    
case 1 :
    
    //calculationType = Int(readLine() ?? "Pick a valid Integer") ?? 1
    
    
    print("Enter your SIMPLE EQUATION (TWO NUMBERS ONLY)")
    
    
case 2 :
    print("Enter your HIGH ORDER FUNCTION (e.g filter 1, 2, 3, 4, 5, 23, 45 < 10)")
default:
    print("ERROR 🤬, CHOOSE EITHER 1 or 2")
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


//var addition = "0 + 0"
//var subtract = "0 - 0"
//var product = "0 * 0"
//var division = "0 / 0"
//
//var additionArray = addition.components(separatedBy: " ") // seperating String into individual elements in an array
//var subtractArray = subtract.components(separatedBy: " ") // seperating String into individual elements in an array
//var productArray = product.components(separatedBy: " ") // seperating String into individual elements in an array
//var divisionArray = division.components(separatedBy: " ") // seperating String into individual elements in an array
//
//var addEquationElement0 = Double(additionArray[0]) ?? 0.0 //converting String "0.0" to Double 0.0 (here number is of type "Int?")
//var addEquationElement1 = Operation(additionArray[1]) ?? 0.0 //converting String "0.0" to Double 0.0
//var addEquationElement2 = Double(additionArray[2]) ?? 0.0 //converting String "0.0" to Double 0.0 (here number is of type "Int?")
//
//var subtractEquationElement0 = Double(subtractArray[0]) ?? 0.0 //converting String "0.0" to Double 0.0 (here number is of type "Int?")
//var subtractEquationElement1 = Operation(subtractArray[1]) ?? 0.0 //converting String "0.0" to Double 0.0
//var subtractEquationElement2 = Double(subtractArray[2]) ?? 0.0 //converting String "0.0" to Double 0.0 (here number is of type "Int?")
//
//var productEquationElement0 = Double(productArray[0]) ?? 0.0 //converting String "0.0" to Double 0.0 (here number is of type "Int?")
//var productEquationElement1 = Operation(productArray[1]) ?? 0.0 //converting String "0.0" to Double 0.0
//var productEquationElement2 = Double(productArray[2]) ?? 0.0 //converting String "0.0" to Double 0.0 (here number is of type "Int?")
//
//var divisionEquationElement0 = Double(divisionArray[0]) ?? 0.0 //converting String "0.0" to Double 0.0 (here number is of type "Int?")
//var divisionEquationElement1 = Operation(divisionArray[1]) ?? 0.0 //converting String "0.0" to Double 0.0
//var divisionEquationElement2 = Double(divisionArray[2]) ?? 0.0 //converting String "0.0" to Double 0.0 (here number is of type "Int?")
