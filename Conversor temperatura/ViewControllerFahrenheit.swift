//
//  ViewControllerFahrenheit.swift
//  Conversor temperatura
//
//  Created by unicred on 07/12/22.
//

import UIKit

class ViewControllerFahrenheit: UIViewController {
    @IBOutlet weak var tempField: UITextField!
    @IBOutlet weak var switchC: UISwitch!
    @IBOutlet weak var switchK: UISwitch!
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var kelvin: Int?
    var celsius: Int?
    var fahrenheit: Int?
    var errado: String?
    
    func calculoC(){
        fahrenheit = Int(tempField.text ?? "");
        celsius = ((fahrenheit! - 32) * 5/9)
        
        resultado.text = "\(celsius ?? 0)C"
    }
    
    func calculoK(){
        fahrenheit = Int(tempField.text ?? "");
        kelvin = ((fahrenheit! - 32) * 5/9 + 273);
        
        resultado.text = "\(kelvin ?? 0)K"
    }
    
    func calculoKC(){
        resultado.text = "errado"
    }
    
    func setSwitch(){
        if switchC.isOn, switchK.isOn == false {
            calculoC()
        } else if switchK.isOn, switchC.isOn == false {
            calculoK()
        } else if switchC.isOn, switchK.isOn {
            calculoKC()
        }
    }

    @IBAction func buttonF(_ sender: Any) {
        setSwitch();
    }
    

}
