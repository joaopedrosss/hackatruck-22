//
//  Moeda.swift
//  coinJSON
//
//  Created by Student on 26/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

struct  Moedas: Codable{
    let id : String?
    let rank : String?
    let symbol : String?
    let name : String?
    let supply : String?
    let maxSupply : String?
    let marketCapsUsd : String?
    let volumeUsd24Hr : String?
    let priceUsd : String?
    let changePercent24Hr : String?
    let vwap24HR : String?
    let explorer : String?
    
}


struct Base: Codable{
    let data: [Moedas]
    let timestamp: Double
}
