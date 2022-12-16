//
//  ViewControllerCelsius.swift
//  Conversor temperatura
//
//  Created by unicred on 06/12/22.
//

import UIKit

class ViewControllerCelsius: UIViewController {
    
    @IBOutlet weak var tempField: UITextField!
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var switchK: UISwitch!
    @IBOutlet weak var switchF: UISwitch!
    @IBOutlet weak var buttonC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var kelvin: Int?
    var celsius: Int?
    var fahrenheit: Int?
    
    func calculoK(celsius: Int){
        kelvin = (celsius + 273);
        
        resultado.text = "\(kelvin ?? 0)K"
    }
    
    func calculoF(celsius: Int){
        fahrenheit = (celsius * (9/5)) + 32;
        
        resultado.text = "\(fahrenheit ?? 0)F"
    }
    
    func calculoKF(mensagemErro: String){
        resultado.text = mensagemErro
    }
    
    
    func setSwitch(){
        while switchF.isOn, switchK.isOn == false {
            calculoF(celsius: convertType(text: tempField.text ?? ""))
            break
        }
        while switchK.isOn, switchF.isOn == false {
            calculoK(celsius: convertType(text: tempField.text ?? ""))
            break
        }
        while (switchK.isOn && switchF.isOn) || (switchK.isOn == false && switchF.isOn == false) {
            if switchF.isOn == false {
                calculoKF(mensagemErro: "Erro o Fahreinheit não funciona")
            } else {
                calculoKF(mensagemErro: "Erro outra coisa não funciona")
            }
            
            break
        }
    }
    
    func convertType(text: String) -> Int {
        return Int(text) ?? 0
    }
    
    @IBAction func buttonC(_ sender: Any) {
        setSwitch()
    }
    
}


