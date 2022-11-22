//
//  Animal.swift
//  AulaTableViewUFALTarde
//
//  Created by Student on 21/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Animal{
    let nomeAnimal:String
    let especieAnimal:String
    let fotoAnimal:String
    
    init(nomeAnimal: String, especieAnimal:String, fotoAnimal:String){
        
        self.nomeAnimal = nomeAnimal
        self.especieAnimal = especieAnimal
        self.fotoAnimal = fotoAnimal
        
    }
}

class AnimalDAO{
    
    static func getList() -> [Animal]{
        return [
            Animal(nomeAnimal: "Snoopy", especieAnimal: "cachorro", fotoAnimal: "cachorro"),
            Animal(nomeAnimal: "Donatelo", especieAnimal: "tartaruga", fotoAnimal: "tartaruga"),
            Animal(nomeAnimal: "Nemo", especieAnimal: "peixe", fotoAnimal: "peixe"),
            Animal(nomeAnimal: "Ze Carioca", especieAnimal: "papagaio", fotoAnimal: "papagaio"),
            Animal(nomeAnimal: "Donald", especieAnimal: "pato", fotoAnimal: "pato"),
            Animal(nomeAnimal: "Jack", especieAnimal: "canguru", fotoAnimal: "canguru"),
            Animal(nomeAnimal: "Pernalogna", especieAnimal: "coelho", fotoAnimal: "coelho")
            
        ]
    }
    
}
