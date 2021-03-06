//
//  MyProjectCard.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View{
        VStack(alignment: .leading, spacing: 0){
            
            Rectangle().frame(height: 0)
            
            Text("Nintendo Switch")
                .font(.system(size: 23))
                .fontWeight(.bold)
                .padding(.bottom, 5)
            Text("10 AM - 12 AM")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack{
                Image("11")
                    .resizable() // 밑에 프레임에 맞게 리사이즈
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(lineWidth: 5)
                            .foregroundColor(.orange)
                    )
                Image("12")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("64")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Button(action: {
                    print("OK Button is clicked")
                    self.shouldShowAlert = true
                }, label: {
                    Text("OK") // Button
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }).alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("This is a notification"))
                }
                
            }
        }
        .padding(20)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
