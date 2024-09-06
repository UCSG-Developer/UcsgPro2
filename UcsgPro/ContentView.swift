//
//  ContentView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 5/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BackGround").ignoresSafeArea()
            ZStack {
                Color("BackgroundApp")
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, World of GitHUB!")
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
