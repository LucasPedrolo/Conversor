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
    
    @objc func setSwitch(){
        viewModel.validateSwitch(field: viewFahrenheit.inputTxtField.text ?? defString, switchC: viewFahrenheit.celsiusSwitch, switchK: viewFahrenheit.kelvinSwitch) { result in
            self.viewFahrenheit.resultLabel.text = result
        }
    }
}
