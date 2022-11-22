//
//  OrigemViewController.swift
//  AulaStoryBoardUFALTarde
//
//  Created by Student on 22/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class OrigemViewController: UIViewController {
    
    
    @IBOutlet weak var corOrigemTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "novaCor"{
            
            if let  dadoDestino = segue.destination as? DestinoViewController{
                dadoDestino.novaCor = corOrigemTextField.text
                corOrigemTextField.text = ""
            }
        }
    }
    


}
