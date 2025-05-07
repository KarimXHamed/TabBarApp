//
//  ReusableRectangle.swift
//  TabBarApp
//
//  Created by Karim Hamed  on 07/05/2025.
//
import SwiftUI
struct ReusableRectangle:View {
    var color :Color
    init(color: Color) {
        self.color = color
    }
    var body : some View {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
                .frame(width: 360, height: 240)
            
        
    }
}
