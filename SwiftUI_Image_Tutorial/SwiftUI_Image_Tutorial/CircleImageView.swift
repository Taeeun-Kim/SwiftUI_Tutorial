//
//  CircleImageView.swift
//  SwiftUI_Image_Tutorial
//
//  Created by Taeeun Kim on 23.03.21.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View{
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius: 2, x: 3, y: 5)
        Image("myImage")
            .resizable()
//            .scaledToFit()
            .scaledToFill()
//            .aspectRatio(contentMode: .fill) // .fill .fit
            .frame(width: 300, height: 300) // 프레임대로 자르기
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 10)
            .overlay(
                Circle()
                    .foregroundColor(.black)
                    .opacity(0.6)
            )
//            .overlay(
//                Circle().stroke(Color.red, lineWidth: 3)
//                    .padding()
//            )
//            .overlay(
//                Circle().stroke(Color.green, lineWidth: 3)
//                    .padding(30)
//            )
            .overlay(
                Circle().stroke(Color.yellow, lineWidth: 10)
            )
            .overlay(
            Text("Kakaotalk")
                .foregroundColor(.white)
                .font(.system(size: 30))
                .fontWeight(.bold)
            )
//            .clipped() // 잘라내기
//            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
