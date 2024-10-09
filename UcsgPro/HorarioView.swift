//
//  HorarioView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 27/9/24.
//

import SwiftUI

struct HorarioView: View {
    @State private var currentDate = Date()
    
    var body: some View {
        ZStack {
            Color("BackGround").ignoresSafeArea()
            ZStack(alignment: .top) {
                Color("BackgroundApp")
                VStack {
                    Text("Calendario Académico")
                        .font(.subheadline).fontWeight(.bold)
                        .padding(.top, 10)
                    
                    HStack {
                        DatePicker(
                            "Seleccionar Fecha",
                            selection: $currentDate,
                            displayedComponents: [.date]
                        )
                        .datePickerStyle(.graphical)
                        .padding(10)
                    }.background(Color("InputPanel"))
                        .cornerRadius(16)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    Divider()
                    ScrollView {
                        VStack {
                            HStack (alignment: .top, spacing: 0) {
                                VStack (alignment: .leading) {
                                    Text(String("INVESTIGACIÓN DE OPERACIONES"))
                                        .font(.body).bold()
                                        .foregroundColor(.white)
                                        .padding(.top, 10)
                                        .padding(.leading, 10)
                                    HStack {
                                        Image(systemName: "deskclock")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 10.0)
                                            .foregroundColor(.white)
                                        Text(String("10:00 - 12:30"))
                                            .font(.caption)
                                            .foregroundColor(.white)
                                        Spacer()
                                        Image(systemName: "chevron.down.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 20.0)
                                            .foregroundColor(.white)
                                            .padding(.trailing, 10)
                                    }.padding(.leading, 10)
                                        .padding(.bottom, 5)
                                    Text(String("CLASES"))
                                        .font(.body).bold()
                                        .foregroundColor(Color(.cyan))
                                        .padding(.leading, 10)
                                        .padding(.bottom, 10)
                                }
                            }.background(Color("ClasePanel"))
                                .cornerRadius(16)
                            
                            HStack (alignment: .top, spacing: 0) {
                                VStack (alignment: .leading) {
                                    Text(String("COMPUTACIÓN CENTRADA EN REDES"))
                                        .font(.body).bold()
                                        .foregroundColor(.white)
                                        .padding(.top, 10)
                                        .padding(.leading, 10)
                                    HStack {
                                        Image(systemName: "deskclock")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 10.0)
                                            .foregroundColor(.white)
                                        Text(String("17:30 - 20:00"))
                                            .font(.caption)
                                            .foregroundColor(.white)
                                        Spacer()
                                        Image(systemName: "chevron.down.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 20.0)
                                            .foregroundColor(.white)
                                            .padding(.trailing, 10)
                                    }.padding(.leading, 10)
                                        .padding(.bottom, 5)
                                    Text(String("EXAMEN"))
                                        .font(.body).bold()
                                        .foregroundColor(Color(.orange))
                                        .padding(.leading, 10)
                                        .padding(.bottom, 10)
                                }
                            }.background(Color("ClasePanel"))
                                .cornerRadius(16)
                            
                            HStack (alignment: .top, spacing: 0) {
                                VStack (alignment: .leading) {
                                    Text(String("PROBABILIDAD Y ESTADÍSTICA"))
                                        .font(.body).bold()
                                        .foregroundColor(.white)
                                        .padding(.top, 10)
                                        .padding(.leading, 10)
                                    HStack {
                                        Image(systemName: "deskclock")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 10.0)
                                            .foregroundColor(.white)
                                        Text(String("20:00 - 22:00"))
                                            .font(.caption)
                                            .foregroundColor(.white)
                                        Spacer()
                                        Image(systemName: "chevron.down.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 20.0)
                                            .foregroundColor(.white)
                                            .padding(.trailing, 10)
                                    }.padding(.leading, 10)
                                        .padding(.bottom, 5)
                                    Text(String("CLASES"))
                                        .font(.body).bold()
                                        .foregroundColor(Color(.cyan))
                                        .padding(.leading, 10)
                                        .padding(.bottom, 10)
                                }
                            }.background(Color("ClasePanel"))
                                .cornerRadius(16)
                            
                            HStack (alignment: .top, spacing: 0) {
                                VStack (alignment: .leading) {
                                    Text(String("REDES II"))
                                        .font(.body).bold()
                                        .foregroundColor(.white)
                                        .padding(.top, 10)
                                        .padding(.leading, 10)
                                    HStack {
                                        Image(systemName: "deskclock")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 10.0)
                                            .foregroundColor(.white)
                                        Text(String("20:00 - 22:00"))
                                            .font(.caption)
                                            .foregroundColor(.white)
                                        Spacer()
                                        Image(systemName: "chevron.down.circle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 20.0)
                                            .foregroundColor(.white)
                                            .padding(.trailing, 10)
                                    }.padding(.leading, 10)
                                        .padding(.bottom, 5)
                                    Text(String("CLASES"))
                                        .font(.body).bold()
                                        .foregroundColor(Color(.cyan))
                                        .padding(.leading, 10)
                                        .padding(.bottom, 10)
                                }
                            }.background(Color("ClasePanel"))
                                .cornerRadius(16)
                            
                        }.padding(10)
                    }
                }
            }.clipShape(UnevenRoundedRectangle(topLeadingRadius: 20, topTrailingRadius: 20))
        }
    }
}

#Preview {
    HorarioView()
}
