//
//  MyProjectCard.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

struct MyProfil: View {
    
    var body: some View{
        VStack{
            Image("test")
                .resizable()
                .scaledToFill()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 220, height: 220, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: .gray, radius: 10, x: 5, y: 5)
                .overlay(
                    Circle().stroke(Color.yellow, lineWidth: 15)
                )
                .padding()
            
            Text("My Profil title")
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding(10)
            
            Text("Who Am I?")
                .font(.title)
                .fontWeight(.medium)
                .padding(.bottom)
            
            NavigationView{
                HStack{
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://www.github.com")
                    ){
                        Text("Github")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .background(Color.red)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://www.outlook.com")
//                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ){
                        Text("Outlook")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(20)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                }
            }
            
            
            Spacer()
        }
        .navigationBarTitle("My Profil")
    }
}

struct MyProfil_Previews: PreviewProvider {
    static var previews: some View {
        MyProfil()
    }
}
