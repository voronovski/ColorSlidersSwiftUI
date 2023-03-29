//
//  ContentView.swift
//  ColorSlidersSwiftUI
//
//  Created by Aleksei Voronovskii on 3/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var color = Color(.red)
    
    var body: some View {
        ZStack {
            Color(red: 50/255, green: 110/255, blue: 190/255)
                .ignoresSafeArea(.all)
            VStack(spacing: 20) {
                ColorView()
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
