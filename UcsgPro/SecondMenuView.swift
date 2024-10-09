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
                    Text("ACCESO A MIS PLATAFORMAS")
                        .font(.headline).bold()
                        .padding(.top, 30)
                    
                    ScrollView {
                        VStack {
                            HStack {
                                Spacer()
                                Link(destination: URL(string: "https://www34.ucsg.edu.ec")!) {
                                    VStack (alignment: .center, spacing: 0) {
                                        Image(systemName: "play.desktopcomputer")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 30)
                                            .foregroundColor(Color("BackGround2"))
                                        Text("Tutorías / Otros")
                                            .font(.footnote).bold()
                                            .padding(.top, 5)
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.center)
                                        
                                    }.frame(height: 130)
                                        .frame(width: 140, alignment: .top)
                                        .frame(alignment: .top)
                                        .background(Color("InputPanel"))
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                }
                                Spacer()
                                VStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "character.book.closed")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 30)
                                        .foregroundColor(Color("BackGround2"))
                                    Text("Salas de Lectura")
                                        .font(.footnote).bold()
                                        .padding(.top, 5)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                }.frame(height: 130)
                                    .frame(width: 140, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("InputPanel"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                Spacer()
                            }
                            HStack {
                                Spacer()
                                VStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "ipad.gen2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 30)
                                        .foregroundColor(Color("BackGround2"))
                                    Text("eBooks")
                                        .font(.footnote).bold()
                                        .padding(.top, 5)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                }.frame(height: 130)
                                    .frame(width: 140, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("InputPanel"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                Spacer()
                                Link(destination: URL(string: "https://www34.ucsg.edu.ec")!) {
                                    VStack (alignment: .center, spacing: 0) {
                                        Image(systemName: "text.document")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 30)
                                            .foregroundColor(Color("BackGround2"))
                                        Text("Facturación electrónica")
                                            .font(.footnote).bold()
                                            .padding(.top, 5)
                                            .foregroundColor(.black)
                                            .multilineTextAlignment(.center)
                                        
                                    }.frame(height: 130)
                                        .frame(width: 140, alignment: .top)
                                        .frame(alignment: .top)
                                        .background(Color("InputPanel"))
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                }
                                Spacer()
                            }.padding(.top)
                        }.padding(.top)
                            .padding(.leading)
                            .padding(.trailing)
                    }.padding(.bottom, 20)
                }
                    .padding()
                    
            }.clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
        }
    }
}

#Preview {
    SecondMenuView()
}
