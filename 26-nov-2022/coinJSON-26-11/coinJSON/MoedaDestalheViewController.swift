//
//  MoedaDestalheViewController.swift
//  coinJSON
//
//  Created by Student on 26/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MoedaDestalheViewController: UIViewController {
    
    
    @IBOutlet weak var nomeMoedaLabel: UILabel!
    
    @IBOutlet weak var symbolMoedaLabel: UILabel!
    
    
    @IBOutlet weak var precoMoedaLabel: UILabel!
    
    var moedaDetalhe: Moedas?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //nomeMoedaLabel.text = moedaDetalhe
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
