//
//  ContentView.swift
//  ColorSlidersSwiftUI
//
//  Created by Aleksei Voronovskii on 3/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 0, green: 110/255, blue: 190/255)
                .ignoresSafeArea(.all)
            VStack(spacing: 20) {
                ColorView(red: red, green: green, blue: blue)
                SliderView(value: $red, color: .red)
                SliderView(value: $green, color: .green)
                SliderView(value: $blue, color: .blue)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
