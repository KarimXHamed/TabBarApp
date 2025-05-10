//
//  SecondScene.swift
//  TabBarApp
//
//  Created by Karim Hamed  on 07/05/2025.
//
import SwiftUI
struct SecondScene:View {
    let columns = Array(repeating: GridItem(.flexible()), count: 4)
    let rows = Array(repeating: GridItem(.fixed(100)), count: 4)
    var body : some View {
        VStack {
            ScrollView {
                LazyVGrid(columns:columns) {
                    Section{
                        ForEach(MockData.colors, id:\.self) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill($0.gradient)
                                .frame(height: 100)
                        }
                    } header: {
                        Text("Favourites")
                            .font(.largeTitle.bold())
                            .frame(maxWidth: .infinity ,alignment: .leading)
                    }
                    Section{
                        ForEach(MockData.colors, id:\.self) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill($0.gradient)
                                .frame(height: 100)
                        }
                    } header: {
                        Text("Don't like")
                            .font(.largeTitle.bold())
                            .frame(maxWidth: .infinity ,alignment: .leading)
                    }
                }
            }
            ScrollView(.horizontal) {
                LazyHGrid(rows:rows) {
                    Section {
                        ForEach(MockData.colors, id:\.self) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill($0.gradient)
                                .frame(width: 100)
                        }
                    } header: {
                        Text("Don't like")
                            .font(.largeTitle.bold())
                            .frame(maxWidth: .infinity ,alignment: .leading)
                    
                    }
                }
            }
        }
    }
}
   

#Preview {
    SecondScene()
    }

