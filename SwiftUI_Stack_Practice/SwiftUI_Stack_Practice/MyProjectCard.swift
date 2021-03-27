//
//  MyProjectCard.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

struct MyProjectCard: View {
    var body: some View{
        VStack(alignment: .leading){
            Rectangle().frame(height: 0)
            Text("Taeeun Jessica Estelle Project")
                .font(.system(size: 23))
                .fontWeight(.bold)
                .padding(.bottom, 5)
            Text("10 AM - 12 AM")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack{
                Circle().frame(width: 50, height: 50)
                Circle().frame(width: 50, height: 50)
                Circle().frame(width: 50, height: 50)
                
                Spacer()
                
                Text("OK")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                    
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
