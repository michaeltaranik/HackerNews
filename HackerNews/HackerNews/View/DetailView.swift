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

