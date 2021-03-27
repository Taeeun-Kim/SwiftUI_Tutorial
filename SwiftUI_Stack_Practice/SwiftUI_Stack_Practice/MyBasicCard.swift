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
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .font(.system(size: 40))
            
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
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
