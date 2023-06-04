//
//  ExtractedView.swift
//  HollisterCo
//
//  Created by Mohammed on 14/11/1444 AH.
//

import SwiftUI


struct ExtractedView: View {
    @State var nameText = ""
    @State var addText = ""
    @State var cityText = ""
    @State var postText = ""
    var body: some View {
        VStack{
            Text("Shipping Address: ")
                .font(.title3)
                .bold()
                .padding(.trailing ,200)
            TextField("name", text: $nameText)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("Address", text: $addText)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("City", text: $cityText)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("Post Code", text: $postText)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
    }
}

struct ExtractedView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedView()
    }
}
