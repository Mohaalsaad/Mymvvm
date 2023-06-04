//
//  ProductView.swift
//  HollisterCo
//
//  Created by Mohammed on 13/11/1444 AH.
//

import SwiftUI

struct ProductView: View {
    @StateObject var vm = ProdactViewModel()
    var columns = [GridItem(.adaptive (minimum: 165), spacing:25)]
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ScrollView {
                        LazyVGrid(columns: columns , spacing: 60){
                            ForEach(myProduct , id: \.id){ i in
                                MyProductView(product: i)
                                    .environmentObject(vm)
                            }.padding()
                        }.padding()
                    }
                }
                
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    NavigationLink{
                        MyCartView()
                            .environmentObject(vm)
                    } label: {
                        MyCartButton(numProduct: vm.myProduct.count)
                            .foregroundColor(.gray)
                        
                    }
                    
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Image("icon")
                            .resizable()
                            .frame(width: 50 , height: 50)
                    }
                    
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}
struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
            
             
    }
}
