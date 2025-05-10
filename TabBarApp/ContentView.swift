//
//  ContentView.swift
//  TabBarApp
//
//  Created by Karim Hamed  on 07/05/2025.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            
            FirstScene()
                .tabItem {
                Image(systemName: "plus")
                Text("tab1")
            }
            SecondScene()
            .tabItem {
                Image(systemName: "pencil")
                Text("tab1")
            }
            Text("c")

            .tabItem {
                Image(systemName: "globe")
                Text("tab1")
            }
            
        }
    }
}



#Preview {
    ContentView()
}
