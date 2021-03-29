//
//  MyList.swift
//  SwiftUI_Stack_Practice
//
//  Created by Taeeun Kim on 29.03.21.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        // 생성자가 있어서, 생성자에 변수값을 바로 넣어줘야함
        // 그냥 false 넣으면 안되고, .constant(false)로 넣어줘야 함
        if #available(iOS 14.0, *){
            
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        _isNavigationBarHidden = isNavigationBarHidden
        // 언더바는 바인딩이 된 부분이고, 언더바 없는건 외부에서 생성자를 통해 들어오는 것
    }
    
    var body: some View{
        
//        List{
//                Text("My List")
//                Text("My List")
//                Text("My List")
//        }
        
//        List{
//            ForEach(1...10, id: \.self){
//                Text("My List \($0)")
//            }
//        }
        
        List{
            Section(
                header: Text("Today")
                    .font(.headline)
                    .foregroundColor(.black)
                ,
                footer: Text("Footer Test")
            ){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "tray.fill", title: "Monster Hunter World \(itemIndex)", start: "10 AM", end: "12 AM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header: Text("Tomorrow")
                        .font(.headline)
                        .foregroundColor(.black)
            ){
                ForEach(1...20, id: \.self){ itemIndex in
                    MyCard(icon: "tray.fill", title: "Monster Hunter Rise \(itemIndex)", start: "10 AM", end: "12 AM", bgColor: Color.green)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 30, bottom: 10, trailing: 10))
            .listRowBackground(Color.orange)
        }
        .listStyle(GroupedListStyle())
//        .listStyle(PlainListStyle()) // 기본 ListStyle 세팅
        .navigationBarTitle("My List")
//        .navigationBarHidden(self.isNavigationBarHidden)
        .onAppear{
            self.isNavigationBarHidden = true
        }
        
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
