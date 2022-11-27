//
//  DestaqueViewController.swift
//  musicPlayer
//
//  Created by Student on 23/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DestaqueViewController: UIViewController {
    
    @IBOutlet weak var artImagem: UIImageView!
    
    @IBOutlet weak var artNomeLabel: UILabel!
    
    
    @IBOutlet weak var artBreveDescLabel: UILabel!
    
    var artista = [Artista]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        artista = ArtistaDAO.getList()
        
        let art = artista[0]
        
        artNomeLabel.text = art.artistaNome
        artBreveDescLabel.text = art.artistaBreveDescricao
        artImagem.image = UIImage(named: art.artistaFoto)
        
    }
    
}
