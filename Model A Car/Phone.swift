//
//  Phone.swift
//  Model A Car
//
//  Created by Devin Cook on 1/30/18.
//  Copyright © 2018 Devin Cook. All rights reserved.
//

import Foundation



class Phone{
    var oS : String
    var manu : String
    var year : Int
    var poweredOn = false
    func powerOn() {
            poweredOn = true
        }
    func printPowerStatus(){
        if self.poweredOn{
            print("My \(manu) phone is powered on.")
        } else {
            print("My \(manu) phone is powered off.")
        }
    }
    init(oS : String, manu : String, year : Int){
        self.oS = oS
        self.manu = manu
        self.year = year
    }
    
}






