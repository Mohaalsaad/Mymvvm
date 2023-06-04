//
//  DetailsProdcutPage.swift
//  HollisterCo
//
//  Created by Mohammed on 13/11/1444 AH.
//

import SwiftUI

struct DetailsProdcutPage: View {
    @State private var showingAlert = false
    @EnvironmentObject var vm : ProdactViewModel
    @State var pro : Prodact
    var body: some View {
        ScrollView {
            VStack{
                
                Image(pro.prodactImage)
                    .resizable()
                    .frame(width: 300 , height: 350)
                    .cornerRadius(20)
                    .padding()
                Spacer()
                
                Text(pro.prodactName)
                    .bold()
                    .font(.largeTitle)
                    .padding()
                Text("\(String(format: "%.2f", pro.prodactPrice)) $")
                    .bold()
                
                
              Text("PRODUCT DETAILS")
                    .bold()
                    .padding()
              Text("A classic short-sleeve shirt with an all-over pattern, full button closure, collar and straight hem. Logo tab near hem, soft poplin fabric. Relaxed Fit. Imported.")
                    .padding()
                
                Text("Sizes:")
                    .bold()
                    .font(.title)
                HStack {
                    ZStack {
                      Circle()
                            .stroke(.cyan, lineWidth: 4)
                      Text("S")
                    }
                    .frame(width: 40, height: 40)
                    ZStack {
                      Circle()
                            .stroke(.cyan, lineWidth: 4)
                      Text("M")
                    }
                    .frame(width: 40, height: 40)
                    ZStack {
                      Circle()
                            .stroke(.cyan, lineWidth: 4)
                      Text("L")
                    }
                    .frame(width: 40, height: 40)
                    
                }.padding()
                
                Button {
                    vm.addToCart(product: pro)
                }
                
                label: {
                    Text("Add To Bage")
                        .frame(maxWidth: .infinity , maxHeight: 20)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.cyan)
                        .clipShape(Capsule())
                        .padding()
                }
                
            }
        }
    }
}

