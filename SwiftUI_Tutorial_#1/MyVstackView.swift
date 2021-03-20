//
//  MyVstackView.swift
//  SwiftUI_Tutorial_#1
//
//  Created by Taeeun Kim on 18.03.21.
//

import SwiftUI

struct MyVstackView: View {
    
    // binding data
    @Binding
    var isActivated: Bool
    
    // Constructor
    init(isActivated: Binding<Bool> =
            .constant(false)){
        _isActivated = isActivated
    }

    var body: some View{
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        } // Vstack
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}
