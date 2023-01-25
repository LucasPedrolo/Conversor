//
//  CelsiusViewModel.swift
//  Conversor temperatura
//
//  Created by unicred on 24/01/23.
//

import Foundation
import UIKit

class CelsiusViewModel {
    
    var convertedKelvin: Int?
    var convertedFahrenheit: Int?
    var switchF: Int?
    
    func calculoK(celsius: Int) -> Int {
        let kelvin = 273
        convertedKelvin = (celsius + kelvin)
        
        if let kelvin = convertedKelvin {
            return kelvin
        }
        return 404
    }
    
    func calculoF(celsius: Int) -> Int {
        let fahrenheit = (celsius * 9/5) + 32
        convertedFahrenheit = (fahrenheit)
        
        if let fahrenheit = convertedFahrenheit {
            return fahrenheit
        }
        return 404
    }
    
    //usar inout e completion()
    
    func validateSwitch(switchF: UISwitch, switchK: UISwitch, kOn: inout Int, fOn: Int, fkOn: Int, fkOff: Int, completion: @escaping (Int) -> ()) {
        while switchF.isOn, switchK.isOn == false {
            kOn = 2
            break
        }
        while switchK.isOn, switchF.isOn == false {
            kOn
            break
        }
        while (switchK.isOn == false && switchF.isOn == false) {
            fkOff
            break
        }
        while switchK.isOn && switchF.isOn {
            fkOn
            break
        }
    }
}
