//
//  SecondView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 6/9/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color("BackGround").ignoresSafeArea()
            ZStack {
                Color("BackgroundApp")
                TabView {
                    NavigationStack {
                        ThirdView()
                            .toolbar {
                                ToolbarItem(placement: .navigationBarLeading, content: {
                                    
                                })
                            }
                    }.accentColor(.white)
                    .tabItem {
                        Image("barbutton_home")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .toolbarBackground(Color("BackGround"), for: .tabBar)
                    SecondMenuView()
                        .tabItem {
                            Image("new_ucsg_estudiante")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    BibliotecasView()
                        .tabItem {
                            Image("barbutton_user")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                }
            }
        }
    }
}

#Preview {
    SecondView()
}
