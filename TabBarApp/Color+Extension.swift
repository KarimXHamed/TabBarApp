//
//  Color+Extension.swift
//  TabBarApp
//
//  Created by Karim Hamed  on 09/05/2025.
//
import SwiftUI
extension Color {
    static var random: Color {
           Color(
               red: .random(in: 0...1),
               green: .random(in: 0...1),
               blue: .random(in: 0...1)
           )
       }
}
