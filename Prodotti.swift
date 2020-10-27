//
//  Prodotti.swift
//  tabvView
//
//  Created by Pasquale on 25/10/2020.
//

import Foundation

struct Prodotti : Identifiable{
    var id = UUID()
    var number : Int
    var nome: String
    var materiale: String
    var peso : Float
    
}


func Converti(product: [Prodotti], cont : [Int]) -> Float {
    
    var co : Float = 0
    var indice : Int = 0
    
    for prod in product{
        switch prod.materiale {
        case "plastic":
            co += prod.peso * 1.535 * Float(cont[indice])
        case "organic":
            co += prod.peso * 0.948 * Float(cont[indice])
        case "paper":
            co += prod.peso * 3.556 * Float(cont[indice])
        case "cardboard":
            co += prod.peso * 3.18 * Float(cont[indice])
        case "glass":
            co += prod.peso * 0.325 * Float(cont[indice])
        default:
            let kco = co
            co = kco
        }
        indice+=1
    }
    
    
    return co
    
}
