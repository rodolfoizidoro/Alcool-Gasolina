//
//  ViewController.swift
//  Alcool Gasolina
//
//  Created by Rodolfo Izidoro on 01/03/17.
//  Copyright © 2017 Rodolfo Izidoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var precoAlcoolTextField: UITextField!
    @IBOutlet weak var legendaResultado: UILabel!
    @IBOutlet weak var precoGasolinaTextField: UITextField!
    
    
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        var precoAlcool: Double = 0
        var precoGasolina: Double = 0
        var precoResultado: Double = 0
        
        //Validações
        
        if let resultadoAlcool = precoAlcoolTextField.text{
            
            if resultadoAlcool != ""{
                
                if let resultadoNumero = Double(resultadoAlcool){
                    
                    precoAlcool = resultadoNumero
                    
                }
            
            }
        
        }
        
        if let resultadoGasolina = precoGasolinaTextField.text{
            
            if resultadoGasolina != ""{
                
                if let resultadoNumero = Double(resultadoGasolina){
                    
                    precoGasolina = resultadoNumero
                    
                }
                
            }
            
        }
        
        //Calculo (precoAlcool / PrecoGasolina) >= 0.7
        
        precoResultado = precoAlcool / precoGasolina
        
        if precoResultado >= 0.7 {
            legendaResultado.text = "Melhor utilizar Gasolina!!"
        }
        else{
            legendaResultado.text = "Melhor utilizar Álcool!!"
        }
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

