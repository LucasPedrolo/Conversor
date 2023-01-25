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
        return 404
    }
    
    func calculoC(kelvin: Int) -> Int {
        let celsius = kelvin - 273
        convertedCelsius = celsius
        
        if let celsius = convertedCelsius {
            return celsius
        }
        return 404
    }
}
