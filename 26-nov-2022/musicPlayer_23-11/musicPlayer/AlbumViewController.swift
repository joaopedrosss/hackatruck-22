//
//  AlbumViewController.swift
//  musicPlayer
//
//  Created by Student on 22/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class AlbumViewController: UIViewController {

    
    @IBOutlet weak var albumImage: UIImageView!
    
    @IBOutlet weak var musicaNomeLabel: UILabel!
    
    @IBOutlet weak var musicaArtistaLabel: UILabel!
    
    @IBOutlet weak var musicaAlbumLabel: UILabel!
    
    
    var musica:Musica?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicaNomeLabel.text = musica!.tituloMusica
        musicaArtistaLabel.text = musica!.cantorMusica
        musicaAlbumLabel.text = musica!.albumMusica
        albumImage.image = UIImage(named: musica!.albumImagem)
        
    
        
    
    }

        
    
    
    

}
