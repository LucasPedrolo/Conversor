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
    
    @objc func setSwitch(){
        viewModel.validateSwitch(field: viewKelvin.inputTxtField.text ?? defString, switchC: viewKelvin.celsiusSwitch, switchF: viewKelvin.fahrenheitSwitch) { result in
            self.viewKelvin.resultLabel.text = result
        }
    }
}
