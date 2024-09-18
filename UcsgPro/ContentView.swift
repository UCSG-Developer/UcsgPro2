//
//  ContentView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 5/9/24.
//

import SwiftUI

struct ContentView: View {
    @State var userLoged = false
    
    var body: some View {
        ZStack {
            Color("BackGround").edgesIgnoringSafeArea(.top)
            ZStack {
                NavigationStack {
                    Color("BackgroundApp")
                    VStack {
                        Image("logo_ucsg")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .padding(.vertical, 32)
                        
                        VStack(alignment: .trailing, spacing: 0) {
                            InputView(texto: .constant(""), titulo: "Nombre de Usuario", placeHolder: "Usuario de Servicios en Línea")
                                .autocapitalization(.none)
                                .padding(20)
                            Button("Recuperar mi Usuario") {
                                print("Button tapped!")
                            }.padding(.bottom, 10)
                                .padding(.trailing, 15)
                                .foregroundColor(Color("BackGround"))
                        }.background(Color("InputPanel"))
                            .cornerRadius(20)
                        
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

                        NavigationLink(destination: SecondView().ignoresSafeArea()) {
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
                        }
                        
                        Divider()
                        
                        Text("Si ya ingreso con su Usuario, utilice la biometría de su dispositivo")
                            .padding(.top, 20)
                        
                        HStack {
                            Button(action: {
                                // action to perform when the button is tapped
                            }) {
                                Image(systemName: "touchid")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding(.top, 20)
                                    .foregroundColor(Color("BackGround"))
                            }
                        }
                    }
                    .padding()
                }
            }.clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
        }
    }
}

#Preview {
    ContentView()
}
