//
//  MyZstack.swift
//  SwiftUI_Stacks_Tutorial
//
//  Created by Taeeun Kim on 25.03.21.
//

import SwiftUI

struct MyZstack: View{
    var body: some View{
        
        ZStack{
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(.yellow)
                .zIndex(2) // default is 0
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .foregroundColor(.red)
                .zIndex(1)
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                .zIndex(0)

        }
        
    }
}

struct MyZstack_Previews: PreviewProvider {
    static var previews: some View {
        MyZstack()
    }
}
