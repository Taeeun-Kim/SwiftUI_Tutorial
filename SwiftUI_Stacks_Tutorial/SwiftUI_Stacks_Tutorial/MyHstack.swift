//
//  MyVstack.swift
//  SwiftUI_Stacks_Tutorial
//
//  Created by Taeeun Kim on 25.03.21.
//

import SwiftUI

struct MyHstack: View{
    var body: some View{
        HStack(alignment: .bottom){
//
//            Divider()
//
//            Rectangle()
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                .foregroundColor(.red)
            
//            Rectangle()
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
//                .foregroundColor(.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 70))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)

        }
        .padding()
        .background(Color.green)
    }
}

struct MyHstack_Previews: PreviewProvider {
    static var previews: some View {
        MyHstack()
    }
}
