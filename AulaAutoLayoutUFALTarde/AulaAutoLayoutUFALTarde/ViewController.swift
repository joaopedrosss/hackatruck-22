//
//  ViewController.swift
//  AulaAutoLayoutUFALTarde
//
//  Created by Student on 19/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nomeDestinoLabel: UILabel!
    
    
    @IBOutlet weak var nomeOrigemTextField: UITextField!
    
    
    @IBAction func enviarDados(_ sender: Any) {
        nomeDestinoLabel.text = nomeOrigemTextField.text
        nomeOrigemTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

