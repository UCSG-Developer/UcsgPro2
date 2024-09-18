//
//  SplashScreenView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 10/9/24.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color("BackGround").ignoresSafeArea()
            VStack {
                Image("icono_ucsg_white")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text("Bienvenido Eduardo Gómez..!!")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .bold()
                    .padding(.top, 40)
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
