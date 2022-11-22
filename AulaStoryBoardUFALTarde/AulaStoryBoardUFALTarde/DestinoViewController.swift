//
//  DestinoViewController.swift
//  AulaStoryBoardUFALTarde
//
//  Created by Student on 22/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DestinoViewController: UIViewController {
    
    @IBOutlet weak var destinoCorLabel: UILabel!
    
    
    var novaCor:String?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        destinoCorLabel.text = novaCor
        
        if novaCor != nil{
            switch novaCor!.lowercased() {
            case "azul":
                self.view.backgroundColor = UIColor.blue
            case "rosa":
                self.view.backgroundColor = UIColor.magenta
            case "roxo":
                self.view.backgroundColor = UIColor.purple
            default:
                self.view.backgroundColor = UIColor.orange
            }
        }
    }
    

}
