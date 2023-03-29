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

struct ColorView: View {
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
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

struct SliderView: View {
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        HStack(spacing: 10) {
            Text("\(lround(value))").foregroundColor(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}
