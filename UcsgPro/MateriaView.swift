//
//  MateriaView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 13/9/24.
//

import SwiftUI

struct MateriaView: View {
    var body: some View {
        ZStack {
            Color("BackGround").ignoresSafeArea()
            ZStack {
                Color("BackgroundApp")
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("COMPUTACIÓN (R)")
                                .foregroundStyle(Color(UIColor.darkGray))
                                .font(.system(size: 12))
                            Text("FACULTAD DE INGENIERÍA")
                                .bold()
                                .font(.system(size: 12))
                                .foregroundStyle(Color(UIColor.darkGray))
                        }
                        Spacer()
                    }.padding(.top)
                        .padding(.leading)
                    
                    VStack (spacing: 0) {
                        VStack (alignment: .leading) {
                            HStack {
                                VStack (alignment: .leading) {
                                    Text(String("INGENIERÍA ECONÓMICA"))
                                        .font(.subheadline).bold()
                                        .foregroundColor(.white)
                                    HStack (alignment: .top, spacing: 0) {
                                        Text(String("Docente"))
                                            .font(.caption).bold()
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .padding(.bottom, 5)
                                            .padding(.leading, 10)
                                            .padding(.trailing, 10)
                                    }.background(Color("BackGround2"))
                                        .cornerRadius(8)
                                    Text(String("CESAR SALAZAR TOVAR"))
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        .padding(.leading, 10)
                                    
                                    HStack (alignment: .top, spacing: 0) {
                                        Text(String("Paralelo"))
                                            .font(.caption).bold()
                                            .foregroundColor(.white)
                                            .padding(.top, 5)
                                            .padding(.bottom, 5)
                                            .padding(.leading, 10)
                                            .padding(.trailing, 10)
                                    }.background(Color("BackGround2"))
                                        .cornerRadius(8)
                                    Text(String("PARALELO A"))
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        .padding(.leading, 10)
                                    
                                }.padding(.top)
                                    .padding(.leading)
                                Spacer()
                                Image("cesar.salazar")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100)
                                    .foregroundColor(.white)
                                    .clipShape(Circle())
                            }.padding(.trailing)
                            VStack (alignment: .leading) {
                                HStack (alignment: .top, spacing: 0) {
                                    Text(String("Horario"))
                                        .font(.caption).bold()
                                        .foregroundColor(.white)
                                        .padding(.top, 5)
                                        .padding(.bottom, 5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                }.background(Color("BackGround2"))
                                    .cornerRadius(8)
                                HStack {
                                    Image(systemName: "calendar")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 10.0)
                                        .foregroundColor(.white)
                                    Text(String("Martes 10:00 - 12:30; Miercoles 14:30 - 15:00"))
                                        .font(.caption)
                                        .foregroundColor(.white)
                                }.padding(.leading, 10)
                            }
                            .padding(.leading)
                                .padding(.bottom)
                        }.background(Color("BackGround"))
                            .cornerRadius(16)
                    }.padding(.leading)
                        .padding(.trailing)
                    ScrollView {
                        VStack {
                            HStack {
                                Spacer()
                                VStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "doc.richtext")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 30)
                                        .foregroundColor(Color("BackGround2"))
                                    Text("Notas")
                                        .font(.footnote).bold()
                                        .padding(.top, 5)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                }.frame(height: 120)
                                    .frame(width: 120, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("InputPanel"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                Spacer()
                                VStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "watchface.applewatch.case")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 30)
                                        .foregroundColor(Color("BackGround2"))
                                    Text("Asistencias del Docente")
                                        .font(.footnote).bold()
                                        .padding(.top, 5)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                }.frame(height: 120)
                                    .frame(width: 120, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("InputPanel"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                Spacer()
                            }
                            HStack {
                                Spacer()
                                VStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "person.fill.checkmark")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 30)
                                        .foregroundColor(Color("BackGround2"))
                                    Text("Asistencias del Estudiante")
                                        .font(.footnote).bold()
                                        .padding(.top, 5)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                }.frame(height: 120)
                                    .frame(width: 120, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("InputPanel"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                Spacer()
                                VStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "graduationcap")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 30)
                                        .foregroundColor(Color("BackGround2"))
                                    Text("Gestión por Tutoría")
                                        .font(.footnote).bold()
                                        .padding(.top, 5)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                }.frame(height: 120)
                                    .frame(width: 120, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("InputPanel"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                Spacer()
                            }.padding(.top)
                            HStack {
                                Spacer()
                                VStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "book")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 30)
                                        .foregroundColor(Color("BackGround2"))
                                    Text("Seguimiento Syllabus")
                                        .font(.footnote).bold()
                                        .padding(.top, 5)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                }.frame(height: 120)
                                    .frame(width: 120, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("InputPanel"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                Spacer()
                                VStack (alignment: .center, spacing: 0) {
                                    Image(systemName: "person.3")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 30)
                                        .foregroundColor(Color("BackGround2"))
                                    Text("Estudiantes Inscritos")
                                        .font(.footnote).bold()
                                        .padding(.top, 5)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.center)
                                    
                                }.frame(height: 120)
                                    .frame(width: 120, alignment: .top)
                                    .frame(alignment: .top)
                                    .background(Color("InputPanel"))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                Spacer()
                            }.padding(.top)
                        }.padding(.top)
                            .padding(.leading)
                            .padding(.trailing)
                    }.padding(.bottom, 20)
                }
            }.clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
        }.frame(alignment: .top)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Text("").font(.caption)
                })
            }
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Color.white, for: .navigationBar)
    }
}

#Preview {
    MateriaView()
}
