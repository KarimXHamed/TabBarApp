//
//  ReusableButton.swift
//  TabBarApp
//
//  Created by Karim Hamed  on 07/05/2025.
//
    import SwiftUI
    struct ReusableButton: View {
        var image:String
        let action: () -> Void
        init(image: String, action:@escaping () -> Void) {
            self.image = image
            self.action = action
        }
        var body: some View {
            Button {
                action()
            }
            label: {
                    Image(systemName: image)
                    .resizable()
                    .frame(width:56,height: 56)
                    .foregroundStyle(.white, .black)
                    .shadow(radius: 10)
            }
        }
    }
