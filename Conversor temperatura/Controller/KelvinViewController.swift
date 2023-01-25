//
//  KelvinViewController.swift
//  Conversor temperatura
//
//  Created by unicred on 24/01/23.
//

import UIKit

class KelvinViewController: UIViewController {
    var viewKelvin = KelvinView()
    var viewModel = KelvinViewModel()
    
    override func loadView() {
        view = viewKelvin
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewKelvin.tempButton.addTarget(self, action: #selector(setSwitch), for: .touchUpInside)
    }
    
    func calculoF(){
        viewKelvin.resultLabel.text = "\(viewModel.calculoF(kelvin: Int(viewKelvin.inputTxtField.text ?? "") ?? 404))F"
    }
    
    func calculoC() {
        viewKelvin.resultLabel.text = "\(viewModel.calculoC(kelvin: Int(viewKelvin.inputTxtField.text ?? "") ?? 404))F"
    }
    
    @objc func setSwitch(){
        while viewKelvin.celsiusSwitch.isOn, viewKelvin.fahrenheitSwitch.isOn == false {
            calculoC()
                break
            }
            while viewKelvin.fahrenheitSwitch.isOn, viewKelvin.celsiusSwitch.isOn == false {
                calculoF()
                break
            }
        while (viewKelvin.celsiusSwitch.isOn && viewKelvin.celsiusSwitch.isOn) || (viewKelvin.fahrenheitSwitch.isOn == false && viewKelvin.celsiusSwitch.isOn == false) {
            if viewKelvin.celsiusSwitch.isOn == false {
                    viewKelvin.resultLabel.text = "Erro o Fahreinheit não funciona"
                } else {
                    viewKelvin.resultLabel.text = "Erro outra coisa não funciona"
                }
                break
            }
        }
    
    func calculoKF(mensagemErro: String){
        viewKelvin.resultLabel.text = mensagemErro
        }
}
