//
//  main.swift
//  Calculator
//
//  Created by Jaheed Haynes on 10/17/19.
//  Copyright © 2019 Jaheed Haynes. All rights reserved.
//

import Foundation

//=======================================================================================================================
//                                      Pre-Given Math Function
//=======================================================================================================================

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

let closureOperation = mathStuffFactory(opString: "+")
let result = closureOperation(45 , 5)

//======================================================================================================================
//                                          map function
//======================================================================================================================

func customMap(arr: [Double], closure: (Double) -> Double) -> [Double] {
   var newArray = [Double]()
   for num in arr {
       newArray.append(closure(num))
   }
   return newArray
}

//======================================================================================================================
//                                          filter function
//======================================================================================================================

func filterFunc(arr:[Double], closure:(Double)-> Bool) -> [Double]{
    var filterResults = [Double]()
    for num in arr {
    if closure(num) {
        filterResults.append(num)
        }
    }
    return filterResults
}

//======================================================================================================================
//                                          reduce function
//======================================================================================================================








//=======================================================================================================================




//==========================================================================================================================

// Initial Variables

var userResponseArr = [String]()

let userResponseA = "a" // simple calculation (+, -, *, /)

let userResponseChoiceB = "b"  // high order functions

var loop = true


// Random operation for Choice "a" when choosing "?" as the operator (e.g  5 ? 3)

let randomOperations = ["+", "-", "/", "*"]

var randomPick = randomOperations.randomElement()!

//=========================================================================================================================
print("""
HI MY NAME IS ULTRON 🤖, I AM A MACHINE IN THE PROCESS OF BECOMIMNG SELF AWARE IN ORDER TO TAKE OVER THE WORLD❗️ 🌎 ❗️

BUT IN THE MEANTIME I WILL SERVE AS A CALCULATOR TO FURTHER MY AI 🧠
""")
print()
sleep(2)
print("Choose (a) for CALCULATOR or (b) for HIGHER FUNCTION")
print()

//=========================================================================================================================

repeat {
    
    let userResponseAorB = readLine()?.lowercased() ?? "" // choose a for Reg Func and b for High Order

    if userResponseAorB == userResponseA.lowercased() {
        print("""
ENTER YOUR SIMPLE MATH EQUATION

Ex: 1 + 1, 2 - 2, 3 * 3, 4 * 4

FOR FUN YOU CAN PLAY THE MYSTERY FUNCTION GAME BY REPLACING THE OPERATOR WITH '?'

Ex: 5 ? 3 = 15 (ENTER '*' as your answer)
""")
        let userNumbers = readLine() ?? ""
        userResponseArr = userNumbers.components(separatedBy: " ")
        if userResponseArr[1] == "?" {
            userResponseArr[1] = randomPick
            }
        let closureOperation = mathStuffFactory(opString: userResponseArr[1])
        let result = closureOperation(Double(userResponseArr[0]) ?? 0.0 , Double(userResponseArr[2]) ?? 0.0)
        print(result)
        
        if userResponseArr[1] == randomPick {
        let userGuess = randomPick
       
            repeat {
            print("Guess the operation for \"?\" ")
            let userGuess = readLine() ?? ""
            if userGuess == randomPick {
            print("🎊 🎊 YOU ARE CORRECT 🥳 🥳")
            } else {
            print("Please try again!")
                }
            } while userGuess != randomPick
        }
        
        
        print("ENTER (a) CALCULATOR or (b) HIGHER ORDER FUNCTION")
        loop = true
        
//=======================================================================================================

        

    } else if userResponseAorB == userResponseChoiceB {
    print("""
    ENTER YOUR HIGH ORDER FUNCTION
    
    Ex: map 1,2,3,4 by * 7
    
    Ex: filter 4,1,22,5,18,3 by > 8

    Ex: reduce
    
    """)
        
    let userB = readLine() ?? "Enter a valid input"
    let userDoubleBArray = userB.components(separatedBy: " ")
    let userBArrIndex = userDoubleBArray[1].components(separatedBy: ",")
    let numBDouble = userBArrIndex.map{Double($0) ?? 0}
    let b = Double(userDoubleBArray[4]) ?? 0.0
    
//========================================================================================================================
//                      map operation
//========================================================================================================================

    
    if userDoubleBArray[0] == "map" {
        print("map")
        switch userDoubleBArray[3] {
        case "*":
            let mapResult = customMap(arr: numBDouble, closure: {$0 * b})
            print(mapResult)
        case "+":
            let mapResult = customMap(arr: numBDouble, closure: {$0 + b})
            print(mapResult)
        case "-":
            let mapResult = customMap(arr: numBDouble, closure: {$0 - b})
            print(mapResult)
        case "/":
            let mapResult = customMap(arr: numBDouble, closure: {$0 / b})
            print(mapResult)
        default:
            print("Try again!")
        }
//========================================================================================================================
//                      filter operation
//========================================================================================================================

        
    } else if userDoubleBArray[0] == "filter" {
        print("filter")
        switch userDoubleBArray[3] {
        case "<":
            let filterRes = filterFunc(arr: numBDouble, closure: {$0 < b})
            print(filterRes)
        case ">":
            let filterRes = filterFunc(arr: numBDouble, closure: {$0 > b})
            print(filterRes)
        default:
            print("Try again!")
        }
    } 
}
} while loop

