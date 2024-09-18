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
                                    Image("logo_estudiantes")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 35.0)
                                })
                                ToolbarItem(placement: .navigationBarTrailing, content: {
                                    Menu(content: {
                                        NavigationLink {
                                            ThirdView()
                                        } label: {
                                            Label("Cambiar de Usuario", systemImage: "person")
                                        }
                                        Link(destination: URL(string: "http://webmail.cu.ucsg.edu.ec")!) {
                                            Label("Correo Institucional", systemImage: "envelope")
                                        }
                                        Divider()
                                        Button(action: {
                                            
                                        }, label: {
                                            Label("Cerrar Sesión", systemImage: "rectangle.portrait.and.arrow.right")
                                        })
                                    }, label: {
                                        Image(systemName: "ellipsis")
                                    })
                                })
                            }
                    }
                    .tabItem {
                        Image("barbutton_home")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 15.0)
                    }
                    .toolbarBackground(Color("BackGround"), for: .tabBar)
                    SplashScreenView()
                        .tabItem {
                            Image("barbutton_chat")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 5.0)
                        }
                    SplashScreenView()
                        .tabItem {
                            Image("barbutton_user")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 5.0)
                        }
                }
            }
        }
    }
}

#Preview {
    SecondView()
}
