//
//  ContentView.swift
//  ColorSlidersSwiftUI
//
//  Created by Aleksei Voronovskii on 3/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var redColor = Double.random(in: 0...255)
    @State private var greenColor = Double.random(in: 0...255)
    @State private var blueColor = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 50/255, green: 110/255, blue: 190/255)
                .ignoresSafeArea(.all)
            VStack(spacing: 20) {
                ColorView(red: $redColor, green: $greenColor, blue: $blueColor)
                SliderView(value: $redColor, color: .red)
                SliderView(value: $greenColor, color: .green)
                SliderView(value: $blueColor, color: .blue)
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
