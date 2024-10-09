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
                            .accentColor(.white)
                    }
                    .tabItem {
                        Image("barbutton_home")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }.toolbarBackground(Color("BackGround"), for: .tabBar)
                    HorarioView()
                        .tabItem {
                            Image("horarios")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }.toolbarBackground(Color("BackGround"), for: .tabBar)
                    SecondMenuView()
                        .tabItem {
                            Image("new_ucsg_estudiante")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }.toolbarBackground(Color("BackGround"), for: .tabBar)
                    MapSiteView()
                        .tabItem {
                            Image("mapa_sitio")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }.toolbarBackground(Color("BackGround"), for: .tabBar)
                    NavigationStack {
                        UserProfileView()
                    }
                    .tabItem {
                        Image("barbutton_user")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }.toolbarBackground(Color("BackGround"), for: .tabBar)
                }
            }
        }
    }
}

#Preview {
    SecondView()
}
