//
//  MyCartView.swift
//  HollisterCo
//
//  Created by Mohammed on 13/11/1444 AH.
//

import SwiftUI

struct MyCartView: View {
    @EnvironmentObject var vm : ProdactViewModel
    
    var body: some View {
        ZStack {
            VStack{
                if vm.myProduct.count > 0{
                    List{
                        ForEach(vm.myProduct , id:\.id){ i in
                            AddedToCartPage(product: i)
                                .environmentObject(vm)
                        }.onDelete { IndexSet in
                            vm.myProduct.remove(atOffsets: IndexSet)
                        }
                        Spacer()
                        Text("Total Price: \(String(format: "%.2f",vm.total)) $")
                            .bold()
                      

                    }
                    .scrollContentBackground(.hidden)
                    
                    NavigationLink {
                        OrderSummaryPage()
                            .environmentObject(vm)
                    }
                    
                    label: {
                        Text("Cheak Out")
                            .frame(maxWidth: .infinity , maxHeight: 20)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .clipShape(Capsule())
                            .padding()
                    }
                }else{
                    Text("The Cart Is Empty 🥲")
                        
                }
                   
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("icon")
                        .resizable()
                        .frame(width: 50 , height: 50)
                }
            }

            .navigationBarBackButtonHidden(true)
        }
    }
}

struct MyCartView_Previews: PreviewProvider {
    static var previews: some View {
        MyCartView()
            .environmentObject(ProdactViewModel() )
        
    }
}



    
