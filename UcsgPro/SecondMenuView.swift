//
//  SecondMenuView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 20/9/24.
//

import SwiftUI

struct SecondMenuView: View {
    var body: some View {
        ZStack {
            Color("BackGround").ignoresSafeArea()
            ZStack(alignment: .topLeading) {
                Color("BackgroundApp")
                VStack(alignment: .leading, spacing: 0) {
                    Text("MI PERFIL ACTUAL")
                        .font(.headline).bold()
                    Image("logo_estudiantes")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                        .padding(.top, 10)
                    Text("MIS ACCESOS EXTERNOS")
                        .font(.headline).bold()
                        .padding(.top, 30)
                    ScrollView {
                        VStack(alignment: .leading, spacing: 10) {
                            Link(destination: URL(string: "https://www34.ucsg.edu.ec")!) {
                                HStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "play.desktopcomputer")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 40)
                                        .foregroundColor(.white)
                                        .padding(.leading, 20)
                                    Text("Tutoría / Otros")
                                        .font(.caption2).bold()
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .padding(.leading, 10)
                                    Spacer()
                                }.frame(height: 60)
                                    .frame(width: 250, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("BackGround2"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                    .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                        effect
                                            .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                    }
                            }
                            
                            Link(destination: URL(string: "https://www34.ucsg.edu.ec")!) {
                                HStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "character.book.closed")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 40)
                                        .foregroundColor(.white)
                                        .padding(.leading, 20)
                                    Text("Salas de Lectura")
                                        .font(.caption2).bold()
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .padding()
                                    Spacer()
                                    
                                }.frame(height: 60)
                                    .frame(width: 250, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("BackGround2"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                    .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                        effect
                                            .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                    }
                            }
                            
                            Link(destination: URL(string: "https://www34.ucsg.edu.ec")!) {
                                HStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "ipad.gen2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 40)
                                        .foregroundColor(.white)
                                        .padding(.leading, 25)
                                    Text("eBooks")
                                        .font(.caption2).bold()
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .padding()
                                    Spacer()
                                    
                                }.frame(height: 60)
                                    .frame(width: 250, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("BackGround2"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                    .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                        effect
                                            .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                    }
                            }
                            
                            Link(destination: URL(string: "https://www34.ucsg.edu.ec")!) {
                                HStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "text.document")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 40)
                                        .foregroundColor(.white)
                                        .padding(.leading, 25)
                                    Text("Facturación electrónica")
                                        .font(.caption2).bold()
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .padding()
                                    Spacer()
                                }.frame(height: 60)
                                    .frame(width: 250, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("BackGround2"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                    .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                        effect
                                            .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                    }
                            }
                        }
                    }.padding(.top, 20)
                }
                    .padding()
                    
            }.clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
        }
    }
}

#Preview {
    SecondMenuView()
}
