//
//  Corvette.swift
//  Model A Car
//
//  Created by Devin Cook on 2/8/18.
//  Copyright © 2018 Devin Cook. All rights reserved.
//

import Foundation

class Corvette: Car {
    var color: String
    override func speedUp() {
        if gas >= 10{
        for _ in 1...5{
            speed += 10
            gas -= 2
            print("Your \(year) \(model) \(make) is going \(speed) miles per hour, with \(gas)% gas left.")
            }
        } else {
            print("You need to refuel")
            speed = 0 
                }
            }
    init(year: Int, model: String, make: String, speed: Int, gas: Int, color: String) {
        self.color = color
        super.init(year: year, model: model, make: make, speed: speed, gas: gas)
    }
}

