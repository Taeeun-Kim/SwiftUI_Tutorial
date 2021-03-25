//
//  MyVstack.swift
//  SwiftUI_Stacks_Tutorial
//
//  Created by Taeeun Kim on 25.03.21.
//

import SwiftUI

struct MyVstack: View{
    var body: some View{
        VStack(alignment: .trailing, spacing: 0){
            
//            Spacer()
            
            Text("Text")
                .font(.system(size: 30))
                .fontWeight(.heavy)
//                .padding(.bottom, 100)
            
            Divider() // 나눔선 생김
                .opacity(0) // 나눔선 안보이게 해줌
            
//            Rectangle()
//                .frame(height: 1)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Spacer()
                .frame(height: 50)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
            
//            Spacer()
//            Spacer()  // 위쪽 한개, 아래쪽 두개하면 자동으로 1/3지점에 위치
        }
        .frame(width: 300)
        .background(Color.green)
//        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}
