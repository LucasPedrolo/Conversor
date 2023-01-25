//
//  HomeView.swift
//  Conversor temperatura
//
//  Created by unicred on 24/01/23.
//

import UIKit

class HomeView: BaseView {
    
    lazy var celsiusButton: UIButton = {
        let celsius = UIButton(type: .custom)
        celsius.setTitle("Celsius", for: .normal)
        celsius.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        celsius.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        celsius.setTitleColor(.black, for: .normal)
        celsius.layer.masksToBounds = true
        celsius.layer.cornerRadius = 20
        celsius.layer.borderWidth = 2
        celsius.layer.borderColor = UIColor.black.cgColor
        
        return celsius
    }()
    
    lazy var kelvinButton: UIButton = {
        let kelvin = UIButton(type: .custom)
        kelvin.setTitle("Kelvin", for: .normal)
        kelvin.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        kelvin.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        kelvin.setTitleColor(.black, for: .normal)
        kelvin.layer.masksToBounds = true
        kelvin.layer.cornerRadius = 20
        kelvin.layer.borderWidth = 2
        kelvin.layer.borderColor = UIColor.black.cgColor
        
        return kelvin
    }()
    
    lazy var fahrenheitButton: UIButton = {
        let fahrenheit = UIButton(type: .custom)
        fahrenheit.setTitle("fahrenheit", for: .normal)
        fahrenheit.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        fahrenheit.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        fahrenheit.setTitleColor(.black, for: .normal)
        fahrenheit.layer.masksToBounds = true
        fahrenheit.layer.cornerRadius = 20
        fahrenheit.layer.borderWidth = 2
        fahrenheit.layer.borderColor = UIColor.black.cgColor
        
        return fahrenheit
    }()
    
    override func addSubviews() {
        addSubview(celsiusButton)
        addSubview(kelvinButton)
        addSubview(fahrenheitButton)
    }
    
    override func setConstraints() {
        celsiusButton.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 120, left: 90, bottom: 0, right: 0), size: .init(width: 200, height: 80))
        
        kelvinButton.anchor(top: celsiusButton.bottomAnchor, leading: celsiusButton.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0), size: .init(width: 200, height: 80))
        
        fahrenheitButton.anchor(top: kelvinButton.bottomAnchor, leading: kelvinButton.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0), size: .init(width: 200, height: 80))
    }
}
