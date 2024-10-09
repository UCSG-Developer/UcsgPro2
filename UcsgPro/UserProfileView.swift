//
//  UserProfileView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 24/9/24.
//

import SwiftUI

struct UserProfileView: View {
    @State private var vibrateOnRing = false
    @State private var fullText: String = ""
    
    var body: some View {
        ZStack {
            Color("BackGround").ignoresSafeArea()
            ZStack(alignment: .top) {
                Color("BackgroundApp")
                ScrollView {
                    VStack {
                        HStack (alignment: .bottom) {
                            Image("eduardo.gomez")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                            //Image(systemName: "camera.fill")
                        }
                        Image("logo_estudiantes")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 40)
                        
                        VStack (alignment: .leading, spacing: 5) {
                            HStack (alignment: .top, spacing: 5) {
                                VStack(alignment: .leading) {
                                    Text("Nombres")
                                        .font(.caption).bold()
                                        .foregroundColor(Color("BackGround"))
                                    Text("EDUARDO MAXIMILIANO")
                                        .font(.body)
                                    Text("Apellidos")
                                        .font(.caption).bold()
                                        .foregroundColor(Color("BackGround"))
                                        .padding(.top, 1)
                                    Text("GÓMEZ AGUAYO")
                                        .font(.body)
                                    Text("Nombre para el Saludo")
                                        .font(.caption).bold()
                                        .foregroundColor(Color("BackGround"))
                                        .padding(.top, 1)
                                    TextField("Nombre completo o Alias", text: $fullText)
                                    Text("Correo electrónico institucional")
                                        .font(.caption).bold()
                                        .foregroundColor(Color("BackGround"))
                                        .padding(.top, 1)
                                    Text("eduardo.gomez@cu.ucsg.edu.ec")
                                        .font(.body)
                                }.padding()
                                Spacer()
                            }
                            
                        }.frame(alignment: .top)
                            .background(Color("InputPanel"))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .padding(.top, 10)
                        
                        VStack (alignment: .leading, spacing: 0) {
                            Toggle(isOn: $vibrateOnRing) {
                                Text("Inicio de sesión biométrico")
                            }
                        }.frame(alignment: .top)
                            .padding()
                            .background(Color("InputPanel"))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .padding(.top, 10)
                        
                        VStack (alignment: .leading, spacing: 0) {
                            HStack {
                                Text("Seguridad")
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                        }.frame(alignment: .top)
                            .padding()
                            .background(Color("InputPanel"))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .padding(.top, 10)
                        
                        VStack (alignment: .leading, spacing: 0) {
                            HStack {
                                Text("Credencial UCSG")
                                Spacer()
                                Image(systemName: "person.text.rectangle")
                            }
                        }.frame(alignment: .top)
                            .padding()
                            .background(Color("InputPanel"))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .padding(.top, 10)
                        
                        VStack (alignment: .leading, spacing: 0) {
                            HStack {
                                NavigationLink {
                                    ContentView()
                                } label: {
                                    Text("Cerrar Sesión")
                                        .foregroundStyle(.black)
                                    Spacer()
                                    Image(systemName: "xmark.circle")
                                        .foregroundStyle(.black)
                                }.navigationBarTitle("", displayMode: .inline)
                            }
                        }.frame(alignment: .top)
                            .padding()
                            .background(Color("InputPanel"))
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .padding(.top, 10)
                        
                    }.padding()
                }
            }.clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
        }
    }
}

#Preview {
    UserProfileView()
}
