//
//  OrderSummaryPage.swift
//  HollisterCo
//
//  Created by Mohammed on 14/11/1444 AH.
//

import SwiftUI

struct OrderSummaryPage: View {
    @EnvironmentObject var vm : ProdactViewModel
//    UITabBar.appearance().isHidden = true
    var body: some View {
        ZStack {
            
            
                ScrollView {
                    VStack{
                        Divider()
                            .padding()
                        ExtractedView()
                        Divider()
                            .padding()
        
                        Text("Payment Method: ")
                            .font(.title3)
                            .bold()
                            .padding(.trailing , 200)
                        ExtractedView1()
                        Divider()
                            .padding()
                        
                        Text("The total Product: \(vm.myProduct.count)")
                            .bold()
                            .font(.title3)
                        
                        Button{
                        
                        }
                        
                        label: {
                            Text("Pay")
                                .frame(maxWidth: .infinity , maxHeight: 20)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black)
                                .clipShape(Capsule())
                                .padding()
                        }
                        
                        
                    }
                    .toolbar(.hidden, for: .tabBar)
                    .navigationTitle("Check out")
                    

                }
            }
        }
    }



struct OrderSummaryPage_Previews: PreviewProvider {
    static var previews: some View {
        OrderSummaryPage()
            .environmentObject(ProdactViewModel() )
    }
}

