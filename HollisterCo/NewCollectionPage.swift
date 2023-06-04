//
//  NewCollectionPAge.swift
//  HollisterCo
//
//  Created by Mohammed on 14/11/1444 AH.
//

import SwiftUI
import MapKit

struct NewCollectionPage: View {
    
    var body: some View {
        VStack {
            NavigationView{
                ScrollView {
                    
                    Image("1")
                        .resizable()
                        .frame(width: 350 , height: 450)
                        .padding()
                    Text("SUMMER SALES!!")
                        .bold()
                        .font(.title2)
                    Text("Creat your new account and have a great discount for the first order!")
                        .font(.caption)
                        .padding()
                    NavigationLink {
                        
                    }
                label: {
                    Text("Sign in")
                        .frame(maxWidth: .infinity , maxHeight: 20)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .clipShape(Capsule())
                        .padding()
                }
                    Image("2")
                        .resizable()
                        .frame(width: 350 , height: 450)
                    Text("THE STYLES OF THE SUMMER")
                        .bold()
                        .font(.title2)
                    Text("The dresses & Shirts Make getting dresses no sweat.")
                        .font(.caption)
                        .padding()
                    NavigationLink {
                        ProductView()
                    }
                label: {
                    Text("Shop Now")
                        .frame(maxWidth: .infinity , maxHeight: 20)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .clipShape(Capsule())
                        .padding()
                }
                    Image("3")
                        .resizable()
                        .frame(width: 350 , height: 450)
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
}
struct NewCollectionPage_Previews: PreviewProvider {
    static var previews: some View {
        NewCollectionPage()
    }
}
