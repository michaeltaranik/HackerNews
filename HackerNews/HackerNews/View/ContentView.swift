//
//  ContentView.swift
//  HackerNews
//
//  Created by Michael Taranik on 12.07.2024.
//

import SwiftUI




struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        VStack {
            NavigationStack {
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
                .navigationTitle("HackerNews")
            }
            .onAppear(perform: {
                self.networkManager.fetchData()
            })
            
        }
        .padding()
        
    }
}


#Preview {
    ContentView()
}



