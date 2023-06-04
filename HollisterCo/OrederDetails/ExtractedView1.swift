//
//  ExtractedView1.swift
//  HollisterCo
//
//  Created by Mohammed on 14/11/1444 AH.
//

import SwiftUI


struct ExtractedView1: View {
    @State var numText = ""
    @State var datText = ""
    @State var secText = ""
    var body: some View {
        VStack{
            HStack{
                Image("pa")
                    .resizable()
                    .frame(width: 50 , height: 50)
                Image("visa")
                    .resizable()
                    .frame(width: 50 , height: 50)
                Image("master")
                    .resizable()
                    .frame(width: 60 , height: 60)
            }
            
            TextField("**** **** **** ****", text: $numText)
                .textFieldStyle(.roundedBorder)
                .padding()
            HStack{
                SecureField("***", text: $secText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                TextField("date", text: $datText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
        }
    }
}


struct ExtractedView1_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedView1()
    }
}
