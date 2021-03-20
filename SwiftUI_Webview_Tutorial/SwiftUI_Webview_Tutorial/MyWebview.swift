//
//  MyWebview.swift
//  SwiftUI_Webview_Tutorial
//
//  Created by Taeeun Kim on 20.03.21.
//

import SwiftUI
import WebKit

// uikit의 uiview를 사용할 수 있도록 한다.
// UIViewControllerReprensentable
struct MyWebview: UIViewRepresentable {
    
    var urlToLoad: String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        // unwrapping
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰를 로드한다
        webview.load(URLRequest(url: url))
        return webview
    }
    
    // 업데이트 ui view
    func updateUIView(_ uiView: WKWebView, context:
    UIViewRepresentableContext<MyWebview>) {
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.google.com")
    }
}
