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
                Text("Bienvenido Eduardo Gómez..!!")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .bold()
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
