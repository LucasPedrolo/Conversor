//
//  ViewControllerKelvin.swift
//  Conversor temperatura
//
//  Created by unicred on 07/12/22.
//

import UIKit

class ViewControllerKelvin: UIViewController {
    @IBOutlet weak var tempField: UITextField!
    @IBOutlet weak var switchC: UISwitch!
    @IBOutlet weak var switchF: UISwitch!
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        var kelvin: Int?
        var celsius: Int?
        var fahrenheit: Int?
        var errado: String?
        
    func calculoC(textFieldC: String){
        kelvin = Int(textFieldC ?? "");
        celsius = (kelvin! -  273);
        
        resultado.text = "\(celsius ?? 0)C"
    }
    
    func calculoF(textFieldF: String){
        kelvin = Int(textFieldF ?? "");
        fahrenheit = ((kelvin ?? 0) -  273) * (9/5) + 32;
        
        resultado.text = "\(fahrenheit ?? 0)F"
    }
    
    func calculoCF(){
        resultado.text = "errado"
    }
    
    func setSwitch(){
        if switchF.isOn, switchC.isOn == false {
            calculoF(textFieldF: tempField.text ?? "")
        } else if switchC.isOn, switchF.isOn == false {
            calculoC(textFieldC: tempField.text ?? "")
        } else if switchC.isOn, switchF.isOn {
            calculoCF()
        }
    }
    
    @IBAction func buttonK(_ sender: Any) {
        setSwitch();
    }
    
    

}
