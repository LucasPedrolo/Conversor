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
        return 0
    }
    
    func calculoF(celsius: Int) -> Int {
        let fahrenheit = (celsius * 9/5) + 32
        convertedFahrenheit = (fahrenheit)
        
        if let fahrenheit = convertedFahrenheit {
            return fahrenheit
        }
        return 0
    }
    
    func validateSwitch(field: String, switchF: UISwitch, switchK: UISwitch ,completion: @escaping (String) -> ()) {
        
        if switchF.isOn, switchK.isOn == false {
            completion("\(calculoF(celsius: Int(field) ?? defInt))C")
            
        } else if switchK.isOn, switchF.isOn == false {
            completion("\(calculoK(celsius: Int(field) ?? defInt))F")
            
        } else if (switchK.isOn == false && switchF.isOn == false) {
            completion("Error none switch activated")
            
        } else if switchK.isOn && switchF.isOn {
            completion("Error both switch activated")
            
        } else {
            completion("Error")
        }
    }
}
