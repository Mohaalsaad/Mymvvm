//
//  MyChart.swift
//  HollisterCo
//
//  Created by Mohammed on 13/11/1444 AH.
//

import SwiftUI

struct MyProductView: View {
    @EnvironmentObject var vm : ProdactViewModel
    @State private var showingSheet = false
    @State private var selectedProduct: Prodact?
    var product : Prodact
    var body: some View {
        ZStack(alignment: .topTrailing ) {
            ZStack(alignment: .bottom){
                Image(product.prodactImage)
                    .resizable()
                    .frame(width: 150 , height: 210)
                    .onTapGesture {
                        selectedProduct = product
                        showingSheet.toggle()
//                        print(selectedProduct!)
                    }.sheet(item: $selectedProduct ){ toShow in
                        DetailsProdcutPage(pro: toShow)}
                
                VStack(alignment: .leading){
                    Text(product.prodactName)
                        .bold()
                        .foregroundColor(.black)
                    Text("\(String(format: "%.2f", product.prodactPrice)) $")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(width: 150, alignment: .leading)
                .background(.regularMaterial)
                .cornerRadius(20)
                
                
            }
            .padding()
            .cornerRadius(70)
            .frame(width: 150, height: 200)
            .shadow(radius: 3)
            Button {
                vm.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    . padding(10)
                    . foregroundColor(.white)
                    . background (.black)
                    . cornerRadius (50)
            }
            
        }
        
        
    }
}

struct MyProductView_Previews: PreviewProvider {
    static var previews: some View {
        MyProductView(product: myProduct[0])
            .environmentObject(ProdactViewModel())
        
    }
}

