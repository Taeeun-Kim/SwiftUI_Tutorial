//
//  ContentView.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 26.03.21.
//

import SwiftUI

struct ContentView: View {
    
//    @State var isNavigationBarHidden: Bool = false

    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading, spacing: 10){
                    HStack{
                        
                        NavigationLink(
                            destination: MyList(/*isNavigationBarHidden: self.$isNavigationBarHidden*/),
                            label: {
                                Image(systemName: "line.horizontal.3")
                                    .font(.largeTitle)
//                                    .foregroundColor(.black)
                            })
                        
                        Spacer()
                        
                        NavigationLink(
                            destination: MyProfil(),
                            label: {
                                Image(systemName: "gear")
                                    .font(.largeTitle)
//                                    .foregroundColor(.black)
                            }
                        )
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                    
                    Text("Game List")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding(.horizontal)
                    
                    ScrollView{
                        VStack{
                            MyProjectCard()
                            MyCard(icon: "doc.fill", title: "Monster Hunter World", start: "10 AM", end: "12 AM", bgColor: Color.blue)
                            MyCard(icon: "tray.fill", title: "Monster Hunter Rise", start: "10 AM", end: "12 AM", bgColor: Color.red)
                            MyBasicCard()
                            MyCard(icon: "doc.fill", title: "Monster Hunter Iceborn", start: "10 AM", end: "12 AM", bgColor: Color.purple)
                            MyBasicCard()
                        }.padding(.horizontal)
                    }
                    
                }
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                    )
                    .foregroundColor(.white)
                    
                    .padding(8)
                    .shadow(radius: 20)
            } // ZStack
            
            //            .navigationBarTitle("Main")
            
            .navigationBarHidden(true)
            //            .navigationBarHidden(self.isNavigationBarHidden)
            //            .onAppear{
            //                self.isNavigationBarHidden = true
            //            }
            
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
