//
//  ProdactViewModel.swift
//  HollisterCo
//
//  Created by Mohammed on 13/11/1444 AH.
//

import Foundation



class ProdactViewModel : ObservableObject{
    @Published var myProduct : [Prodact] = []
    @Published var total : Double = 0
    @Published private var favoriteProducts: [Prodact] = []
    
    func addToCart(product: Prodact) {
        myProduct.append(product)
        total += product.prodactPrice
    }
    
    func addToFavorite(product: Prodact) {
        myProduct.append(product)
        
    }
}





