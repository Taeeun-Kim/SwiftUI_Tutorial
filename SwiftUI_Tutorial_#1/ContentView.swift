//
//  ContentView.swift
//  SwiftUI_Tutorial_#1
//
//  Created by Taeeun Kim on 18.03.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            MyVstackView()
            MyVstackView()
            MyVstackView()
            MyVstackView()
            MyVstackView()
        } // Hstack
            .padding(10.0) // top, bottom, leading(left), right(
            .background(Color.yellow)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
