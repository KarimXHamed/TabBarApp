//
//  MockData.swift
//  TabBarApp
//
//  Created by Karim Hamed  on 09/05/2025.
//
import SwiftUI
struct MockData {
    static var colors : [Color] {
        var array: [Color] = []
        for _ in 0..<30 {array.append(Color.random)}
        return array
    }
}
