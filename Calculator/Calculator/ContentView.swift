//
//  ContentView.swift
//  Calculator
//
//  Created by Taeeun Kim on 23.03.21.
//

import SwiftUI

enum CalButton {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case zero
    case add
    case subtract
    case divide
    case multiply
    case equal
    case clear
    case decimal
    case percent
    case negative
}

struct ContentView: View {
    
    let buttons: [[CalButton]] = [
        [.seven, .eight, .nine] // 0 0, 0 1, 0 2
    ]
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack{
                Spacer()
                Text("555,0")
                    .foregroundColor(.white)
                    .font(.system(size: 80))
            }
            .padding()
            
            // Buttons
            ForEach(buttons, id: \.self){ row in
                // row는 buttons의 값들을 차례대로 받음
                ForEach(row, id: \.self){ item in
                    // item은 row의 값들을 차례대로 받음
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text(item.rawValue)
                    })
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
