//
//  ViewController.swift
//  Alcool_ou_Gasolina
//
//  Created by Gabriel Mendonça on 21/03/20.
//  Copyright © 2020 Gabriel Mendonça. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textAlcool: UITextField!
    @IBOutlet weak var textGasolina: UITextField!
    @IBOutlet weak var labellResultados: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalcular(_ sender: UIButton) {
        if  let alcool = textAlcool.text {
            if let gasolina = textGasolina.text{
              let validouCampos = self.validarcampos(alcool: alcool, gasolina: gasolina)
                if validouCampos {
                    melhorPreco(alcool: alcool, gasolina: gasolina)
                } else {
                    labellResultados.text = "Digite os precos dos combustiveis primeiro"
                }
            }
            
        }
    }
    func melhorPreco(alcool: String, gasolina: String){
        if let valorAlcool = Double(alcool){
            if let valorGasolina = Double(gasolina){
                
                let resultado = valorAlcool / valorGasolina
                if resultado >= 0.7 {
                    self.labellResultados.text = "Melhor utilizar gasolina"
                } else {
                    self.labellResultados.text = "Melhor utilizar alcool"
                }
            }
        }
    }
    
    func validarcampos(alcool: String, gasolina: String) -> Bool{
        
        var camposValidos = true
        if alcool.isEmpty{
            camposValidos = false
        } else if gasolina.isEmpty{
            camposValidos = false
        }
        return camposValidos
        
    }
    
}

