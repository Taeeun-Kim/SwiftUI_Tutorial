//
//  MyProjectCard.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View{
        HStack(){
            
            Image(systemName: "flag.fill")
                .frame(width: 50, height: 50)
                .foregroundColor(.orange)
                .font(.system(size: 40))
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text("Monster Hunter Rise")
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                Text("10 AM - 12 AM")
                    .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(Color.green)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
