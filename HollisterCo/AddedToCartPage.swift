//
//  AddedToCartPage.swift
//  HollisterCo
//
//  Created by Mohammed on 13/11/1444 AH.
//

import SwiftUI

struct AddedToCartPage: View {
    @EnvironmentObject var vm : ProdactViewModel
    var product : Prodact
    var body: some View {
        HStack{
            Image(product.prodactImage)
                .resizable()
                .frame(width: 100 , height: 130)
                .cornerRadius(30)
                .padding()
            VStack {
                Text("\(product.prodactName)")
                Text("\(String(format: "%.2f", product.prodactPrice)) $")
            }.padding()
        }
    }
}

struct AddedToCartPage_Previews: PreviewProvider {
    static var previews: some View {
        AddedToCartPage(product: myProduct[0])
    }
}
