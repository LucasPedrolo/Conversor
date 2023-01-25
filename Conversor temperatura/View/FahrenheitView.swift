//
//  CelsiusView.swift
//  Conversor temperatura
//
//  Created by unicred on 24/01/23.
//

import UIKit

class FahrenheitView: BaseView {
    
    lazy var inputTxtField: UITextField = {
        let input = UITextField()
        input.text = ""
        input.textColor = .black
        input.font = UIFont.systemFont(ofSize: 20)
        input.layer.borderWidth = 2
        
        return input
    }()
    
    lazy var celsiusSwitch: UISwitch = {
        let kelvin = UISwitch()
        
        return kelvin
    }()
    
    lazy var kelvinSwitch: UISwitch = {
        let fahrenheit = UISwitch()
        
        return fahrenheit
    }()
    
    lazy var celsiusLabel: UILabel = {
        let kelvin = UILabel()
        kelvin.text = "Celsius"
        kelvin.textColor = .black
        kelvin.font = UIFont.systemFont(ofSize: 20)
        
        return kelvin
    }()
    
    lazy var kelvinLabel: UILabel = {
        let fahrenheit = UILabel()
        fahrenheit.text = "Kelvin"
        fahrenheit.textColor = .black
        fahrenheit.font = UIFont.systemFont(ofSize: 20)
        
        return fahrenheit
    }()
    
    lazy var tempButton: UIButton = {
        let temp = UIButton(type: .custom)
        temp.setTitle("Temperature", for: .normal)
        temp.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        temp.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        temp.setTitleColor(.black, for: .normal)
        temp.layer.masksToBounds = true
        temp.layer.cornerRadius = 20
        temp.layer.borderWidth = 2
        temp.layer.borderColor = UIColor.black.cgColor
        
        return temp
    }()
    
    lazy var resultLabel: UILabel = {
        let result = UILabel()
        result.text = ""
        result.textAlignment = .center
        result.textColor = .black
        result.font = UIFont.systemFont(ofSize: 20)
        
        return result
    }()
    
    override func addSubviews() {
        addSubview(resultLabel)
        addSubview(celsiusSwitch)
        addSubview(kelvinSwitch)
        addSubview(tempButton)
        addSubview(kelvinLabel)
        addSubview(celsiusLabel)
        addSubview(inputTxtField)
    }
    
    override func setConstraints() {
        inputTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 170, left: 100, bottom: 0, right: 0), size: .init(width: 200, height: 30))
        
        kelvinSwitch.anchor(top: inputTxtField.bottomAnchor, leading: inputTxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: 125, bottom: 0, right: 0), size: .init(width: 50, height: 50))
        
        celsiusSwitch.anchor(top: kelvinSwitch.bottomAnchor, leading: kelvinSwitch.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 50, height: 50))
        
        tempButton.anchor(top: celsiusSwitch.bottomAnchor, leading: celsiusSwitch.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 80, left: -105, bottom: 0, right: 0), size: .init(width: 160, height: 70))
        
        resultLabel.anchor(top: nil, leading: tempButton.leadingAnchor, bottom: tempButton.topAnchor, trailing: nil, padding: .init(top: 0, left: -70, bottom: 40, right: 0), size: .init(width: 300, height: 20))
        
        kelvinLabel.anchor(top: kelvinSwitch.topAnchor, leading: nil, bottom: nil, trailing: kelvinSwitch.leadingAnchor, padding: .init(top: 5, left: 0, bottom: 0, right: 20), size: .init(width: 70, height: 20))
        
        celsiusLabel.anchor(top: celsiusSwitch.topAnchor, leading: nil, bottom: nil, trailing: celsiusSwitch.leadingAnchor, padding: .init(top: 5, left: 0, bottom: 0, right: 20), size: .init(width: 70, height: 20))
    }
}
