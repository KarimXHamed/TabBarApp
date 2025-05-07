//
//  FirstScene.swift
//  TabBarApp
//
//  Created by Karim Hamed  on 07/05/2025.
//
import SwiftUI
struct FirstScene :View {
    let colors:[Color] = [
        .red,.blue,.purple,.cyan,.green,.yellow,.pink,.teal
    ]
    @State private var scrollPosition = ScrollPosition()
    let buttonImages = ["arrow.up.circle.fill","arrow.down.circle.fill","arrow.up.and.down.circle.fill"]
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack(spacing:24) {
                    ForEach(colors, id:\.self) { color in
                        ReusableRectangle(color: color)
                            .onScrollVisibilityChange {isVisible in
                                if isVisible {
                                    print("\(color) is visible")
                                }
                            }
                    }
                }
                
            }
            .scrollPosition($scrollPosition)
            .animation(.spring, value: scrollPosition)
            VStack(spacing: 16) {
                ForEach(buttonImages,id: \.self) {image in
                    ReusableButton(image: image) {
                        goDown()
                    }
                }
            }
        }

    }
    private func goUp() {
        scrollPosition.scrollTo(edge: .top)
    }
    private func goDown() {
        scrollPosition.scrollTo(edge: .bottom)

    }
    private func scrollTo() {
        scrollPosition.scrollTo(id:colors[4])
    }
    
}



#Preview {
    ContentView()
}
