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
            ZStack(alignment: .top) {
                Color("BackgroundApp")
                VStack(alignment: .leading, spacing: 1) {
                    Image("icono_ucsg_white")
                        .imageScale(.small)
                        .foregroundStyle(.tint)
                    Text("Hello, world of Git !")
                    
                }.background(Color("BackGround"))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
