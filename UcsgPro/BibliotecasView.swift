//
//  BibliotecasView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 13/9/24.
//

import SwiftUI

struct BibliotecasView: View {
    var body: some View {
        ZStack {
            Color("BackGround").ignoresSafeArea()
            ZStack {
                Color("BackgroundApp")
                VStack {
                    
                }
            }.clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
        }
    }
}

#Preview {
    BibliotecasView()
}
