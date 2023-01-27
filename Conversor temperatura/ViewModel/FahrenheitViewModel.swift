//
//  FahrenheitViewModel.swift
//  Conversor temperatura
//
//  Created by unicred on 24/01/23.
//

import Foundation
import UIKit

class FahrenheitViewModel {
    
    var convertedKelvin: Int?
    var convertedCelsius: Int?
    
    func calculoK(fahrenheit: Int) -> Int {
        let kelvin = (fahrenheit - 32) * 5/9 + 273
        convertedKelvin = (kelvin)
        
        if let kelvin = convertedKelvin {
            return kelvin
        }
        return 0
    }
    
    func calculoC(fahrenheit: Int) -> Int {
        let celsius = (fahrenheit - 32) * 5/9
        convertedCelsius = (celsius)
        
        if let celsius = convertedCelsius {
            return celsius
        }
        return 0
    }
    
    func validateSwitch(field: String, switchC: UISwitch, switchK: UISwitch ,completion: @escaping (String) -> ()) {
        
        if switchC.isOn, switchK.isOn == false {
            completion("\(calculoC(fahrenheit: Int(field) ?? defInt))F")
            
        } else if switchK.isOn, switchC.isOn == false {
            completion("\(calculoK(fahrenheit: Int(field) ?? defInt))K")
            
        } else if (switchK.isOn == false && switchC.isOn == false) {
            completion("Error none switch activated")
            
        } else if switchK.isOn && switchC.isOn {
            completion("Error both switch activated")
            
        } else {
            completion("Error")
        }
    }
}
