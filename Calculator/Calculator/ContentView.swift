//
//  ContentView.swift
//  Calculator
//
//  Created by Taeeun Kim on 23.03.21.
//

import SwiftUI

enum CalcButton: String{
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "/"
    case multiply = "x"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
}

struct ContentView: View {
    
    let buttons: [[CalcButton]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal],
    ]
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                // Text display on a calculator
                HStack{
                    Spacer()
                    Text("0")
                        .bold()
                        .font(.system(size: 52))
                        .foregroundColor(.white)
                }
                .padding()
                
                // Buttons
                    ForEach(buttons, id: \.self){ row in
                        HStack{
                            ForEach(row, id: \.self){ item in
                                Button(action: {
                                    
                                }, label: {
                                    Text(item.rawValue)
                                        .font(.system(size: 32))
                                        .frame(width: 70, height: 70)
                                        .background(Color.orange)
                                        .foregroundColor(.white)
                                        .cornerRadius(35)
                                })
                            }
                        }
                    }
            }
        }
    }
    
    func buttonWidth(item: CalcButton) -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12))/4
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
