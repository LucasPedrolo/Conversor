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
        return 404
    }
    
    func calculoC(fahrenheit: Int) -> Int {
        let celsius = (fahrenheit - 32) * 5/9
        convertedCelsius = (celsius)
        
        if let celsius = convertedCelsius {
            return celsius
        }
        return 404
    }
}
