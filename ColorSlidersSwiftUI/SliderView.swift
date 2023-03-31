//
//  SliderView.swift
//  ColorSlidersSwiftUI
//
//  Created by Aleksei Voronovskii on 3/28/23.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        HStack(spacing: 10) {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .frame(width: 35, alignment: .leading)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
//            TextField("0", text: "\(lround($value))")
//                .textFieldStyle(.roundedBorder)
//                .frame(width: 50)
//                .multilineTextAlignment(.trailing)
        }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(0), color: .red)
    }
}
