//
//  ContentView.swift
//  SwiftUI_Tutorial_#1
//
//  Created by Taeeun Kim on 18.03.21.
//

import SwiftUI

struct ContentView: View {
    
    //@State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                } // HStack
                .padding(isActivated ? 50.0 : 10.0) // top, bottom, leading(left), right(
                .background(isActivated ? Color.yellow : Color.black)
                
                // add tab gesture
                .onTapGesture {
                    print("Clicked HStack")
                    
                    // with animation
                    withAnimation{
                        // toggle() true -> false, false -> true
                        self.isActivated.toggle()
                    }
                } // HStack
                
                // Navigation button(link)
                NavigationLink(destination: MyTextView()){
                    Text("Navigation")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                } .padding(.top, 50)
            } // VStack
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
