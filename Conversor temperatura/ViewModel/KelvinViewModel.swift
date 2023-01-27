//
//  KelvinViewModel.swift
//  Conversor temperatura
//
//  Created by unicred on 24/01/23.
//

import Foundation
import UIKit

class KelvinViewModel {
    
    var convertedFahrenheit: Int?
    var convertedCelsius: Int?
    
    func calculoF(kelvin: Int) -> Int {
        let fahrenheit = (kelvin -  273) * (9/5) + 32
        convertedFahrenheit = fahrenheit
        
        if let fahrenheit = convertedFahrenheit {
            return fahrenheit
        }
        return 0
    }
    
    func calculoC(kelvin: Int) -> Int {
        let celsius = kelvin - 273
        convertedCelsius = celsius
        
        if let celsius = convertedCelsius {
            return celsius
        }
        return 0
    }
    
    func validateSwitch(field: String, switchC: UISwitch, switchF: UISwitch ,completion: @escaping (String) -> ()) {
        
        if switchC.isOn, switchF.isOn == false {
            completion("\(calculoC(kelvin: Int(field) ?? defInt))C")
            
        } else if switchF.isOn, switchC.isOn == false {
            completion("\(calculoF(kelvin: Int(field) ?? defInt))F")
            
        } else if (switchF.isOn == false && switchC.isOn == false) {
            completion("Error none switch activated")
            
        } else if switchF.isOn && switchC.isOn {
            completion("Error both switch activated")
            
        } else {
            completion("Error")
        }
    }
}
