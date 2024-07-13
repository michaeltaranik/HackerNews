//
//  DetailView.swift
//  HackerNews
//
//  Created by Michael Taranik on 13.07.2024.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(url: URL(string: url ?? "https://www.google.com")!, webView: WKWebView(frame: .zero))
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}


struct WebView: UIViewRepresentable {
 
    let url: URL
    let webView: WKWebView
    

    
    func makeUIView(context: Context) -> WKWebView {
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
