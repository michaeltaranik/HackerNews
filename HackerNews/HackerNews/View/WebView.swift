//
//  WebView.swift
//  HackerNews
//
//  Created by Michael Taranik on 13.07.2024.
//

import Foundation
import WebKit
import SwiftUI


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

