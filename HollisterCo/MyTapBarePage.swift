//
//  MyTapBarePage.swift
//  HollisterCo
//
//  Created by Mohammed on 13/11/1444 AH.
//

import SwiftUI

struct MyTapBarePage: View {
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.stackedLayoutAppearance.normal.iconColor = .gray
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        appearance.stackedLayoutAppearance.selected.iconColor = UIColor(Color.accentColor)
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(Color.accentColor)]

        UITabBar.appearance().standardAppearance = appearance
    }
    var body: some View {
        ZStack {
            
            TabView {
                NewCollectionPage()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                ProductView()
                    .tabItem {
                        Label("Favorite", systemImage: "heart")
                    }
                    
            }
            
        }
    }
}


struct MyTapBarePage_Previews: PreviewProvider {
    static var previews: some View {
        MyTapBarePage()
    }
}
