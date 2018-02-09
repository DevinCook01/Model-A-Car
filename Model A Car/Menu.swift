//
//  Menu.swift
//  Model A Car
//
//  Created by Devin Cook on 2/8/18.
//  Copyright © 2018 Devin Cook. All rights reserved.
//

import Foundation


func Menu(){
    var quit = false
    let preBuiltCar = Corvette(year: 2017, model: "Chevy", make: "Corvette", speed: 0, gas: 100, color:"Red")
    var year = 0
    var model = ""
    var make = ""
    var newCar = Car(year: year, model: model, make: make, speed: 0, gas: 100)
    print("Welcome to Model A Car\n 1. Make a New Car\n 2. Choose a prebuilt car\n 3. Quit")
        var userInput = Int(readLine()!)
    while userInput == nil{
        print("Please enter 1, 2, or 3.")
        userInput = Int(readLine()!)
    }
        if userInput == 3 {
            quit = true
        }
    if userInput == 1 {
        print("What year was the car manufactured?")
        year = Int(readLine()!)!
        print("What model is the car?")
        model = readLine()!
        print("What is the make of the car?")
        make = readLine()!
        newCar = Car(year: year, model: model, make: make, speed: 0, gas: 100)
    }

    while !quit {
        print("What would you like to do with your car?\n 1. Speed Up\n 2. Slow Down\n 3. Refuel\n 4. Quit")
        var userInput2 = Int(readLine()!)
        while userInput2 == nil{
            print("Please enter 1, 2, 3, 4.")
            userInput2 = Int(readLine()!)
        }
        if userInput2 == 4 {
            quit = true
        }
        if userInput2 == 3 {
            if userInput == 2{
                preBuiltCar.Refuel()
            }
            if userInput == 1{
                newCar.Refuel()
            }
        }
        if userInput2 == 2 {
            if userInput == 2 {
                preBuiltCar.SlowDown()
            }
            if userInput == 1 {
                newCar.SlowDown()
            }
        }
        if userInput2 == 1{
            if userInput == 2 {
                preBuiltCar.speedUp()
            }
            if userInput == 1 {
                newCar.speedUp()
            }
        }
    }
}

