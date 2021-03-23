//
//  ContentView.swift
//  SwiftUI_Image_Tutorial
//
//  Created by Taeeun Kim on 23.03.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -500)
                
                CircleImageView()
                HStack{
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.google.com")
                    ){
                        Text("Subscribe")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.naver.com")
                                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ){
                        Text("Whatsapp")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(20)
                    }
                } // HStack
                .padding(50)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
