//
//  FahrenheitViewController.swift
//  Conversor temperatura
//
//  Created by unicred on 24/01/23.
//

import UIKit

class FahrenheitViewController: UIViewController {

    var viewFahrenheit = FahrenheitView()
    var viewModel = FahrenheitViewModel()

    override func loadView() {
        view = viewFahrenheit
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewFahrenheit.tempButton.addTarget(self, action: #selector(setSwitch), for: .touchUpInside)
    }
    
    func calculoK(){
        viewFahrenheit.resultLabel.text = "\(viewModel.calculoK(fahrenheit: Int(viewFahrenheit.inputTxtField.text ?? "") ?? 404))K"
    }
    
    func calculoC() {
        viewFahrenheit.resultLabel.text = "\(viewModel.calculoC(fahrenheit: Int(viewFahrenheit.inputTxtField.text ?? "") ?? 404))F"
    }
    
    @objc func setSwitch(){
        while viewFahrenheit.celsiusSwitch.isOn, viewFahrenheit.kelvinSwitch.isOn == false {
            calculoC()
                break
            }
            while viewFahrenheit.kelvinSwitch.isOn, viewFahrenheit.celsiusSwitch.isOn == false {
                calculoK()
                break
            }
        while (viewFahrenheit.kelvinSwitch.isOn && viewFahrenheit.celsiusSwitch.isOn) || (viewFahrenheit.kelvinSwitch.isOn == false && viewFahrenheit.celsiusSwitch.isOn == false) {
            if viewFahrenheit.celsiusSwitch.isOn == false {
                    viewFahrenheit.resultLabel.text = "Erro o Fahreinheit não funciona"
                } else {
                    viewFahrenheit.resultLabel.text = "Erro outra coisa não funciona"
                }
                break
            }
        }
    
    func calculoKF(mensagemErro: String){
        viewFahrenheit.resultLabel.text = mensagemErro
        }
}


