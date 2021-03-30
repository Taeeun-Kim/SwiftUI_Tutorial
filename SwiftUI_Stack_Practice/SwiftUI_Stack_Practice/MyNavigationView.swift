//
//  MyNavigationView.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 30.03.21.
//

import SwiftUI

struct MyNavigationView: View{
    var body: some View {
        NavigationView{
//            Text("NavigationView")
//                .navigationBarTitle("Hallo") // 디폴트 값은 .large
//                .navigationBarTitle("Hallo", displayMode: .large)
            MyList()
                .navigationBarTitle("Hallo", displayMode: .automatic)
                .navigationBarItems(leading: Button(action: {
                    print("Button is clicked") // 버튼 클릭했을 때, 일어남
                }, label: {
                    Text("Button") // 버튼의 생김새
                })
                , trailing: NavigationLink(
                    destination: Text("Screen Change"),
                    label: {
//                        /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                        Image(systemName: "bookmark.fill")
                            .font(.system(size: 25))
//                            .foregroundColor(.orange)
                    })
                )
        }
    }
}

struct  MyNavigationView_Preiviews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
    
