//
//  ContentView.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack{
                
                Text("Game List")
                    .font(.system(size: 40))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.blue)
                
                ScrollView{
                    VStack{
                        MyProjectCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                    }
                    .padding()
                }

            }
            
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                )
                .foregroundColor(.white)
            
                .padding(8)
                .shadow(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
