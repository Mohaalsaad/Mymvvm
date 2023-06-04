//
//  MyCartButton.swift
//  HollisterCo
//
//  Created by Mohammed on 13/11/1444 AH.
//

import SwiftUI

struct MyCartButton: View {
    var numProduct: Int
    var body: some View {
        ZStack{
            Image(systemName: "cart")
                .foregroundColor(.gray)
                .padding(.top , 25)
            
            if numProduct > 0{
                Text ("\(numProduct)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame (width: 15, height: 15)
                    .background(Color.cyan)
                    .cornerRadius(50)
            }
            
        }
    }
}

struct MyCartButton_Previews: PreviewProvider {
    static var previews: some View {
        MyCartButton(numProduct: 1)
    }
}
