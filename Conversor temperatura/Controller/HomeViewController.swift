//
//  HomeViewController.swift
//  Conversor temperatura
//
//  Created by unicred on 24/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var viewHome = HomeView()
    
    override func loadView() {
        view = viewHome
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewHome.celsiusButton.addTarget(self, action: #selector(goCelsius), for: .touchUpInside)
        viewHome.kelvinButton.addTarget(self, action: #selector(goKelvin), for: .touchUpInside)
        viewHome.fahrenheitButton.addTarget(self, action: #selector(goFahrenheit), for: .touchUpInside)
    }
    
    @objc func goCelsius() {
        let goCelsius = CelsiusViewController()
        navigationController?.pushViewController(goCelsius, animated: true)
    }
    
    @objc func goKelvin() {
        let goKelvin = KelvinViewController()
        navigationController?.pushViewController(goKelvin, animated: true)
    }
    
    @objc func goFahrenheit() {
        let goFahrenheit = FahrenheitViewController()
        navigationController?.pushViewController(goFahrenheit, animated: true)
    }
}
