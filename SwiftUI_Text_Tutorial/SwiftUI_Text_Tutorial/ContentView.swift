//
//  ContentView.swift
//  SwiftUI_Text_Tutorial
//
//  Created by Taeeun Kim on 21.03.21.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY.M.d"
        formatter.dateStyle = .long // .full(요일까지) .long(3을 March로)
        return formatter
    }()
    
    var today = Date()
    
    var trueOrFalse : Bool = false
    
    var num : Int = 123
    
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,")
                .tracking(2) // 글자 사이 간격
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil) // multi line
                .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .truncationMode(.tail) // head middle tail
                
                .shadow(color: .red, radius: 1.5, x: 5, y: 5)
                
                .padding(.all, 20)
                // same -> padding(20)
                .background(Color.yellow)
                .cornerRadius(10)
                
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            
                .padding()
            
            Text("Hello!!")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("Today's date: \(today, formatter: ContentView.dateFormat)")
            
            Text("True or False: \(String(trueOrFalse))")
            // 불리언함수는 바로 못쓰고 String() 안에다 넣어줘야 함
            
            Text("This is a number: \(num)")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
