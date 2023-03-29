//
//  ColorView.swift
//  ColorSlidersSwiftUI
//
//  Created by Aleksei Voronovskii on 3/28/23.
//

import SwiftUI

struct ColorView: View {
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
            .fill(.red)
            .frame(width: screenWidth - 32, height: screenHeight * 0.2)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
