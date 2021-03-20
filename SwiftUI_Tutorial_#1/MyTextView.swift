//
//  MyTextView.swift
//  SwiftUI_Tutorial_#1
//
//  Created by Taeeun Kim on 18.03.21.
//

import SwiftUI

struct MyTextView: View {
    
    // binding data
    @Binding
    var isActivated: Bool
    
    // Constructor
    init(isActivated: Binding<Bool> =
            .constant(false)){
        _isActivated = isActivated
    }
    
    //@State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var index: Int = 0
    
    // 배경색 배열 준비
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
        ]
    
    var body: some View{
        VStack{
            Spacer()
            
            Text("Background Item Index \(self.index)")
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: 100)
            Text("Active state: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ?
                    Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
        }.background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("Clicked Background Item") // self.index = self.index % 5
            if(self.index == 4){
                self.index = -1
            }
            self.index += 1
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
