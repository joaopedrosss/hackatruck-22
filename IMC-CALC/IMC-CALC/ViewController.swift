//
//  ViewController.swift
//  IMC-CALC
//
//  Created by Student on 19/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pesoText: UITextField!
    
    
    @IBOutlet weak var alturaText: UITextField!
    
    
    @IBOutlet weak var resultadoText: UILabel!
    
    @IBAction func calcularIMC(_ sender: Any) {
        
        //Pegar valores
        var peso_texto = pesoText.text
        var alt_texto = alturaText.text
        
        
        var peso:Double=Double((peso_texto as! NSString).doubleValue)
        
        
        
        var alt:Double=Double((alt_texto as! NSString).doubleValue)
        
        
        
        if pesoText.text?.isEmpty == true && alturaText.text?.isEmpty==true{
            //implemntar uIAlertControl
            
        }else{
            let imc:Double = peso / (alt*alt)
            let res:String = String(format:"%.1f",imc)
            resultadoText.text = res
        }
        
        
        

        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

