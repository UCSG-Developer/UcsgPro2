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
                    Image("logo_ucsg")
                    Text("Hello, World of GitHUB!")
                    Text("Trying to keep versions well")
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
