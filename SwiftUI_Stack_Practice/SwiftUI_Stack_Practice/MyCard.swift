//
//  MyProjectCard.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

struct MyCard: View {
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View{
        HStack(){
            
            Image(systemName: icon)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .font(.system(size: 40))
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text(title)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "doc.fill", title: "Monster Hunter World", start: "10 AM", end: "12 AM", bgColor: Color.blue)
    }
}
