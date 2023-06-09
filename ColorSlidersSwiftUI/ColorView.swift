//
//  ColorView.swift
//  ColorSlidersSwiftUI
//
//  Created by Aleksei Voronovskii on 3/28/23.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    private let screenWidth = UIScreen.main.bounds.size.width
    private let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
            .fill(Color(red: red/255, green: green/255, blue: blue/255))
            .frame(width: screenWidth - 32, height: screenHeight * 0.2)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 0, green: 100, blue: 0)
    }
}
