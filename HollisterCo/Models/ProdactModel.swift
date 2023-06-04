//
//  ProdactModel.swift
//  HollisterCo
//
//  Created by Mohammed on 13/11/1444 AH.
//

import Foundation


struct Prodact : Identifiable{
    var id = UUID()
    var prodactImage: String
    var prodactName: String
    var prodactPrice: Double
}

var myProduct = [
            Prodact(prodactImage: "product1", prodactName: "Graphic Hoodi", prodactPrice: 138.5),
            Prodact(prodactImage: "product2", prodactName: "product2", prodactPrice: 115),
            Prodact(prodactImage: "product3", prodactName: "product3", prodactPrice: 120.5),
            Prodact(prodactImage: "product4", prodactName: "product4", prodactPrice: 118.7),
            Prodact(prodactImage: "product5", prodactName: "product5", prodactPrice: 168.9),
            Prodact(prodactImage: "product6", prodactName: "product5", prodactPrice: 148.8),
            Prodact(prodactImage: "product7", prodactName: "product7", prodactPrice: 238.5),
            Prodact(prodactImage: "product8", prodactName: "product9", prodactPrice: 238.4)
]
