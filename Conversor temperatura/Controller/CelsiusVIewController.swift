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
    
    @objc func setSwitch(){
        viewModel.validateSwitch(field: viewCelsius.inputTxtField.text ?? defString, switchF: viewCelsius.fahrenheitSwitch, switchK: viewCelsius.kelvinSwitch) { result in
            self.viewCelsius.resultLabel.text = result
        }
    }
}
