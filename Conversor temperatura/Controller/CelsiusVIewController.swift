//
//  CelsiusVIewController.swift
//  Conversor temperatura
//
//  Created by unicred on 24/01/23.
//

import UIKit

class CelsiusViewController: UIViewController {
    
    var viewModel = CelsiusViewModel()
    var viewCelsius = CelsiusView()
    
    override func loadView() {
        view = viewCelsius
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewCelsius.tempButton.addTarget(self, action: #selector(setSwitch), for: .touchUpInside)
    }
    
    
    func calculoK(){
        viewCelsius.resultLabel.text = "\(viewModel.calculoK(celsius: Int(viewCelsius.inputTxtField.text ?? "") ?? 404))K"
    }
    
    func calculoF() {
        viewCelsius.resultLabel.text = "\(viewModel.calculoF(celsius: Int(viewCelsius.inputTxtField.text ?? "") ?? 404))F"
    }
    
    @objc func setSwitch(){
        
        
        viewModel.validateSwitch(switchF: viewCelsius.fahrenheitSwitch, switchK: viewCelsius.kelvinSwitch, kOn: 0, fOn: 1, fkOn: 2, fkOff: 3) { result in
            swi
        }
        
        
        
        while viewCelsius.fahrenheitSwitch.isOn, viewCelsius.kelvinSwitch.isOn == false {
            calculoF()
                break
            }
            while viewCelsius.kelvinSwitch.isOn, viewCelsius.fahrenheitSwitch.isOn == false {
                calculoK()
                break
            }
        while (viewCelsius.kelvinSwitch.isOn && viewCelsius.fahrenheitSwitch.isOn) || (viewCelsius.kelvinSwitch.isOn == false && viewCelsius.fahrenheitSwitch.isOn == false) {
            if viewCelsius.fahrenheitSwitch.isOn == false {
                    viewCelsius.resultLabel.text = "Erro o Fahreinheit não funciona"
                } else {
                    viewCelsius.resultLabel.text = "Erro outra coisa não funciona"
                }
                break
            }
        }
    
    func calculoKF(mensagemErro: String){
        viewCelsius.resultLabel.text = mensagemErro
        }
}
