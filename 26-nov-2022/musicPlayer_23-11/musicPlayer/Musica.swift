//
//  Musica.swift
//  musicPlayer
//
//  Created by Student on 22/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Musica{
    let tituloMusica:String
    let cantorMusica: String
    let albumMusica: String
    let albumImagem: String
    
    init(tituloMusica:String, cantorMusica:String, albumMusica:String,albumImagem:String){
        self.tituloMusica = tituloMusica
        self.cantorMusica = cantorMusica
        self.albumMusica = albumMusica
        self.albumImagem = albumImagem
    }
}

class MusicaDAO{
    static func getList() -> [Musica]{
        return [
            Musica(tituloMusica: "Come as You are", cantorMusica: "Nirvana", albumMusica: "Nevermind", albumImagem: "nevermind"),
            Musica(tituloMusica: "Nemo", cantorMusica: "Nightwish", albumMusica: "Once", albumImagem: "once"),
            Musica(tituloMusica: "My Imortal", cantorMusica: "Evanescence",albumMusica: "Fallen", albumImagem: "fallen")
        ]
    }
}
