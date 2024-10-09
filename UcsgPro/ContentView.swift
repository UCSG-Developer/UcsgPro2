//
//  ContentView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 5/9/24.
//

import SwiftUI

struct ContentView: View {
    @State var userLoged = false
    @State var userName = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            Color("BackGround").edgesIgnoringSafeArea(.top)
            ZStack(alignment: .top) {
                Color("BackgroundApp")
                    VStack {
                        NavigationStack {
                            ZStack(alignment: .top) {
                                VStack {
                                    Text("Bienvenido Eduardo Gómez")
                                        .font(.title2).bold()
                                        .padding(.bottom, 10)
                                    Image("logo_ucsg")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 50)
                                        .padding(.bottom, 20)
                                    VStack(alignment: .trailing, spacing: 0) {
                                        InputView(texto: $userName, titulo: "Nombre de Usuario", placeHolder: "Usuario de Servicios en Línea")
                                            .autocapitalization(.none)
                                            .padding(20)
                                        Button("Recuperar mi Usuario") {
                                            print("Button tapped!")
                                        }.padding(.bottom, 10)
                                            .padding(.trailing, 15)
                                            .foregroundColor(Color("BackGround"))
                                    }.background(Color("InputPanel"))
                                        .cornerRadius(20)
                                    if(userName.lengthOfBytes(using: .utf8) > 0) {
                                        VStack(alignment: .trailing, spacing: 0) {
                                            InputView(texto: .constant(""), titulo: "Contraseña", placeHolder: "Ingrese su contraseña", isSecureField: true)
                                                .padding(20)
                                            Button("Olvidé mi contraseña") {
                                                Task {
                                                    SecondView()
                                                }
                                            }.padding(.bottom, 10)
                                                .padding(.trailing, 15)
                                                .foregroundColor(Color("BackGround"))
                                        }.background(Color("InputPanel"))
                                            .cornerRadius(20)
                                            .padding(.top, 10)
                                    }
                                    
                                    Button {
                                        print("Haciendo clic")
                                    } label: {
                                        HStack{
                                            NavigationLink(destination: SecondView()) {
                                                Text("Continuar")
                                            }.foregroundColor(.white)
                                                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                                        }
                                    }
                                    .background(Color("BackGround"))
                                    .cornerRadius(10)
                                    .padding(.top, 30)
                                    .padding(.bottom, 20)
                                    
                                    
                                    Divider()
                                    
                                    Text("O utilice la Biometría de su dispositivo")
                                        .padding(.top, 20)
                                    
                                    Button {
                                        print("Haciendo clic")
                                    } label: {
                                        HStack {
                                            Image(systemName: "faceid")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 30)
                                                .foregroundColor(.white)
                                            
                                            Text("Face ID")
                                            .foregroundColor(.white)
                                                
                                        }
                                    }.frame(width: UIScreen.main.bounds.width - 32, height: 48)
                                    .background(Color("BackGround"))
                                    .cornerRadius(10)
                                    .padding(.top, 30)
                                    .padding(.bottom, 20)
                                }
                            }.padding()
                            Spacer()
                        }
                }
            }.clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
        }
    }
}

#Preview {
    ContentView()
}
