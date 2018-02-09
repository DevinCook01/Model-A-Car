//
//  Car.swift
//  Model A Car
//
//  Created by Devin Cook on 1/30/18.
//  Copyright © 2018 Devin Cook. All rights reserved.
//

import Foundation


class Car{
    var year: Int
    var model: String
    var make: String
    var speed = 0
    var gas = 100
    func speedUp(){
        if gas >= 5{
        for _ in 1...5{
        speed += 5
        gas -= 1
            print("Your \(year) \(model) \(make) is going \(speed) miles per hour, with \(gas)% gas left.")
            }
        }
    }
    func SlowDown(){
        if speed >= 25{
        for _ in 1...5{
            speed -= 5
            print("Your \(year) \(model) \(make) is going \(speed) miles per hour, with \(gas)% gas left.")
        }
        }
    }
    func Refuel(){
        gas = 100
        print("Your gas tank is fuel")
        speed = 0
    }
    init(year: Int, model: String, make: String, speed: Int, gas: Int){
        self.year = year
        self.model = model
        self.make = make
        self.speed = speed
        self.gas = gas
    }
}

