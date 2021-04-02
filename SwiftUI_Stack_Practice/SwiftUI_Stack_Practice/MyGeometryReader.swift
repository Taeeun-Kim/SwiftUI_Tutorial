//
//  MyGeometryReader.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

struct MyGeometryReader: View {
    
    var body: some View{
        GeometryReader{ geometryReader in
            VStack{
                Spacer()
                HStack(spacing: 10){
//                    Spacer()
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: geometryReader.size.width / 3)
                        .foregroundColor(.white)
                        .background(Color.red)
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: geometryReader.size.width / 3)
                        .foregroundColor(.white)
                        .background(Color.blue)
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: geometryReader.size.width / 3)
                        .foregroundColor(.white)
                        .background(Color.green)
//                    Text("4")
//                        .font(.largeTitle)
//                        .fontWeight(.black)
//                        .frame(width: 100)
//                        .foregroundColor(.white)
//                        .background(Color.purple)
//                    Spacer()
                }.background(Color.yellow) // HStack
                Spacer()
            }
        }.background(Color.black)
    }
}

struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
