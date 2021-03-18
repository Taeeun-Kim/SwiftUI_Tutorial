//
//  MyVstackView.swift
//  SwiftUI_Tutorial_#1
//
//  Created by Taeeun Kim on 18.03.21.
//

import SwiftUI

struct MyVstackView: View {
    var body: some View{
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.largeTitle)
            Text("2!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            Text("3!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
        } // Vstack
            .background(Color.red)
    }
}
