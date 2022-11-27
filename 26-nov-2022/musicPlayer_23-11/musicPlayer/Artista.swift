//
//  Artista.swift
//  musicPlayer
//
//  Created by Student on 23/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation


class Artista{
    let artistaNome:String
    let artistaBreveDescricao:String
    let artistaLongaDescricao:String
    let artistaFoto:String
    
    init(artistaNome:String, artistaBreveDescricao:String,artistaLongaDescricao:String, artistaFoto:String){
        self.artistaNome = artistaNome
        self.artistaBreveDescricao = artistaBreveDescricao
        self.artistaLongaDescricao = artistaLongaDescricao
        self.artistaFoto = artistaFoto
    }
}

class ArtistaDAO{
    static func getList() -> [Artista]{
        var breveDesc:String = "Kurt Donald Cobain foi um cantor, compositor e músico norte-americano"
        
        var longDesc:String = "Kurt Donald Cobain foi um cantor, compositor e músico norte-americano famoso por ter sido o fundador, vocalista e guitarrista da banda Nirvana."
        
        return[
            Artista(artistaNome: "Kurt Cobain", artistaBreveDescricao: breveDesc, artistaLongaDescricao: longDesc, artistaFoto: "kurt")
        ]
    }
}
