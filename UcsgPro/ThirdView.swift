//
//  ThirdView.swift
//  UcsgPro
//
//  Created by Ing. Eduardo Gomez on 6/9/24.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color("BackGround").ignoresSafeArea()
            ZStack(alignment: .top) {
                Color("BackgroundApp")
                VStack {
                    ZStack(alignment: .leading) {
                        Image("watermark_ucsg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100, alignment: .leading)
                        HStack {
                            VStack (alignment: .leading) {
                                Text("Eduardo Gomez").bold()
                                    .font(.title2)
                                    .padding(.top, 20)
                                    .foregroundColor(Color.white)                                           
                                    .multilineTextAlignment(.leading)
                                
                                Text("COMPUTACIÓN (R)")
                                    .font(.system(size: 13))
                                    .foregroundColor(Color.white)
                                    .lineLimit(1)
                                Text("FACULTAD DE INGENIERÍA")
                                    .font(.system(size: 10, weight: .bold))
                                    .foregroundColor(Color.white)
                                    .lineLimit(1)
                            }.padding(.leading, 20).padding(.bottom, 20)
                            Spacer()
                            Image("eduardo.gomez")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }.padding(.trailing, 10)
                            
                    }.background(Color("BackGround"))
                        .frame(alignment: .leading)
                        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 20, bottomTrailingRadius: 20))
                    ScrollView {
                        VStack (alignment: .leading) {
                            VStack (spacing: 0) {
                                HStack (alignment: .top, spacing: 0) {
                                    VStack (alignment: .leading) {
                                        Text(String("Siguiente Clase"))
                                            .font(.caption)
                                            .foregroundColor(.white)
                                            .padding(.top, 20)
                                            .padding(.leading, 20)
                                        Text(String("TEORÍA DE LA IMAGEN"))
                                            .font(.body).bold()
                                            .foregroundColor(.white)
                                            .padding(.leading, 20)
                                        HStack {
                                            Image(systemName: "deskclock")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 10.0)
                                                .foregroundColor(.white)
                                            Text(String("10:00 - 12:30"))
                                                .font(.caption)
                                                .foregroundColor(.white)
                                            Text(String("[NO HA LLEGADO]"))
                                                .font(.caption).bold()
                                                .foregroundColor(Color.yellow)
                                                
                                        }.padding(.leading, 20)
                                            .padding(.bottom, 20)
                                    }
                                    Spacer()
                                }.background(Color("BackGround2"))
                                    .cornerRadius(16)
                                    
                                Text(String("Mis clases de Hoy"))
                                    .font(.footnote).bold()
                                    .padding(.top, 10)
                                Spacer()
                            }.frame(height: 140)
                                .frame(alignment: .top)
                                .background(Color("InputPanel"))
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .padding(10)
                            
                            Text("MIS MATERIAS")
                                .font(.body).bold()
                                .padding(.top, 10)
                                .padding(.leading, 20)
                            
                            ScrollView(.horizontal) {
                                LazyHStack(spacing: 15) {
                                    NavigationLink(destination: MateriaView()) {
                                        VStack (alignment: .leading, spacing: 0) {
                                            HStack (alignment: .top, spacing: 0) {
                                                Text("Ingeniería económica")
                                                    .font(.body).bold()
                                                    .padding(.top, 30)
                                                    .padding(.leading, 10)
                                                    .foregroundColor(Color("BackGround2"))
                                            }
                                            HStack (alignment: .top, spacing: 0) {
                                                Text("Cód.: 544")
                                                    .font(.caption)
                                                    .padding(.leading, 10)
                                                    .padding(.bottom, 10)
                                                    .foregroundColor(Color("BackGround2"))
                                            }
                                            
                                            Divider()
                                            
                                            HStack (alignment: .top, spacing: 0) {
                                                Text(String("PARALELO A"))
                                                    .font(.caption).bold()
                                                    .foregroundColor(.white)
                                                    .padding(5)
                                            }.background(Color("BackGround2"))
                                                .cornerRadius(10)
                                                .padding(.top, 10)
                                                .padding(.leading, 10)
                                            
                                            HStack (alignment: .top, spacing: 0) {
                                                Image(systemName: "location.north")
                                                    .padding(.top, 10)
                                                    .padding(.leading, 10)
                                                    .foregroundColor(.black)
                                                Text("PRESENCIAL")
                                                    .font(.caption)
                                                    .foregroundColor(.black)
                                                    .padding(.top, 10)
                                                    .padding(.leading, 5)
                                            }
                                            
                                            HStack (alignment: .top, spacing: 0) {
                                                Image(systemName: "person.wave.2")
                                                    .padding(.top, 10)
                                                    .padding(.leading, 10)
                                                    .foregroundColor(.black)
                                                Text("CÉSAR SALAZAR TOVAR")
                                                    .font(.caption)
                                                    .foregroundColor(.black)
                                                    .padding(.top, 10)
                                                    .padding(.leading, 5)
                                                    .padding(.trailing, 5)
                                            }
                                            
                                            HStack {
                                                Text("Asistencia: 50%")
                                                    .font(.caption).foregroundColor(.black)
                                                    .padding(.top, 10)
                                                    .padding(.leading, 10)
                                                    .padding(.bottom, 10)
                                                    .padding(.trailing, 5)
                                                Image(systemName: "exclamationmark.triangle.fill")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(height: 15.0)
                                                    .foregroundColor(.orange)
                                            }
                                            
                                            Spacer()
                                            
                                        }.frame(height: 250)
                                            .frame(width: .screenWidth - 180, alignment: .top)
                                            .frame(alignment: .top)
                                            .background(Color("InputPanel"))
                                            .clipShape(RoundedRectangle(cornerRadius: 16))
                                            .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                                effect
                                                    .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                            }
                                    }.navigationBarTitle("", displayMode: .inline)
                                    
                                    VStack (alignment: .leading, spacing: 0) {
                                        HStack (alignment: .top, spacing: 0) {
                                            Text("Finanzas (R)")
                                                .font(.body).bold()
                                                .padding(.top, 30)
                                                .padding(.leading, 10)
                                                .foregroundColor(Color("BackGround2"))
                                        }
                                        HStack (alignment: .top, spacing: 0) {
                                            Text("Cód.: 108")
                                                .font(.caption)
                                                .padding(.leading, 10)
                                                .padding(.bottom, 10)
                                                .foregroundColor(Color("BackGround2"))
                                        }
                                        
                                        Divider()
                                        
                                        HStack (alignment: .top, spacing: 0) {
                                            Text(String("PARALELO B"))
                                                .font(.caption).bold()
                                                .foregroundColor(.white)
                                                .padding(5)
                                        }.background(Color("BackGround2"))
                                            .cornerRadius(10)
                                            .padding(.top, 10)
                                            .padding(.leading, 10)
                                        
                                        HStack (alignment: .top, spacing: 0) {
                                            Image(systemName: "location.north")
                                                .padding(.top, 10)
                                                .padding(.leading, 10)
                                            Text("PRESENCIAL")
                                                .font(.caption)
                                                .padding(.top, 10)
                                                .padding(.leading, 5)
                                        }
                                        
                                        HStack (alignment: .top, spacing: 0) {
                                            Image(systemName: "person.wave.2")
                                                .padding(.top, 10)
                                                .padding(.leading, 10)
                                            Text("JORGE PESANTES LIMONES")
                                                .font(.caption)
                                                .padding(.top, 10)
                                                .padding(.leading, 5)
                                                .padding(.trailing, 5)
                                        }
                                        HStack {
                                            Text("Asistencia: 89%")
                                                .font(.caption)
                                                .padding(.top, 10)
                                                .padding(.leading, 10)
                                                .padding(.bottom, 10)
                                                .padding(.trailing, 5)
                                            Image(systemName: "checkmark.circle.fill")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 15.0)
                                                .foregroundColor(.green)
                                        }
                                        Spacer()
                                    }.frame(height: 250)
                                        .frame(width: .screenWidth - 180, alignment: .top)
                                        .frame(alignment: .top)
                                        .background(Color("InputPanel"))
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                        .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                            effect
                                                .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                        }
                                    
                                }
                                .padding(.top, 5)
                                .padding(.leading, 10)
                                .padding(.trailing, 10)
                                .scrollTargetLayout()
                                
                            }
                            .scrollTargetBehavior(.viewAligned)
                            
                            Text("MIS DEUDAS")
                                .font(.body).bold()
                                .padding(.top, 20)
                                .padding(.leading, 20)
                            
                            VStack (alignment: .leading, spacing: 0) {
                                HStack (alignment: .top, spacing: 0) {
                                    VStack {
                                        HStack {
                                            Image("deuda")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 25.0)
                                            VStack (alignment: .leading) {
                                                Text(String("TALLER 4: POST"))
                                                    .font(.caption).bold()
                                                    .padding(.top, 5)
                                                    .padding(.leading, 8)
                                                Text(String("Pagar hasta: 28-09-2024"))
                                                    .font(.caption2).bold()
                                                    .padding(.leading, 8)
                                                
                                            }
                                            Spacer()
                                            Text(String("$304.50"))
                                                .font(.caption).bold()
                                                .padding(.top, 5)
                                                .padding(.leading, 8)
                                        }.padding(.top, 10)
                                            .padding(.leading, 10)
                                        Divider()
                                        HStack {
                                            Image("deuda")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 25.0)
                                            VStack (alignment: .leading) {
                                                Text(String("Pensión Agosto"))
                                                    .font(.caption).bold()
                                                    .padding(.top, 5)
                                                    .padding(.leading, 8)
                                                Text(String("Pagar hasta: 12-10-2024"))
                                                    .font(.caption2).bold()
                                                    .padding(.leading, 8)
                                                
                                            }
                                            Spacer()
                                            Text(String("$250.00"))
                                                .font(.caption).bold()
                                                .padding(.top, 5)
                                                .padding(.leading, 8)
                                        }.padding(.top, 5)
                                            .padding(10)
                                    }
                                    Spacer()
                                }
                                Spacer()
                            }.frame(height: 140)
                                .frame(alignment: .top)
                                .background(Color("InputPanel"))
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .padding(10)
                            
                            Text("MIS ACCESOS")
                                .font(.body).bold()
                                .padding(.top, 10)
                                .padding(.leading, 20)
                            
                            ScrollView(.horizontal) {
                                LazyHStack(spacing: 10) {
                                    Link(destination: URL(string: "https://www34.ucsg.edu.ec")!) {
                                        VStack (alignment: .center, spacing: 0) {
                                            Image(systemName: "arrow.down.document")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 30)
                                                .foregroundColor(.white)
                                            Text("Descargar Trámites")
                                                .font(.caption2).bold()
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.center)
                                            
                                        }.frame(height: 85)
                                            .frame(width: 85, alignment: .top)
                                            .frame(alignment: .top)
                                            .background(Color("BackGround2"))
                                            .clipShape(RoundedRectangle(cornerRadius: 16))
                                            .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                                effect
                                                    .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                            }
                                    }
                                    NavigationLink(destination: BibliotecasView()) {
                                        VStack (alignment: .center, spacing: 0) {
                                            Image(systemName: "headset.circle")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 30)
                                                .foregroundColor(.white)
                                            Text("Consulta Mesa de Ayuda")
                                                .font(.caption2).bold()
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.center)
                                            
                                        }.frame(height: 85)
                                            .frame(width: 85, alignment: .top)
                                            .frame(alignment: .top)
                                            .background(Color("BackGround2"))
                                            .clipShape(RoundedRectangle(cornerRadius: 16))
                                            .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                                effect
                                                    .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                            }
                                    }
                                    NavigationLink(destination: BibliotecasView()) {
                                        VStack (alignment: .center, spacing: 0) {
                                            Image(systemName: "questionmark.circle.dashed")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 30)
                                                .foregroundColor(.white)
                                            Text("Preguntas Frecuentes")
                                                .font(.caption2).bold()
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.center)
                                            
                                        }.frame(height: 85)
                                            .frame(width: 85, alignment: .top)
                                            .frame(alignment: .top)
                                            .background(Color("BackGround2"))
                                            .clipShape(RoundedRectangle(cornerRadius: 16))
                                            .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                                effect
                                                    .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                            }
                                    }
                                    NavigationLink(destination: BibliotecasView()) {
                                        VStack (alignment: .center, spacing: 0) {
                                            Image(systemName: "books.vertical.fill")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(height: 30)
                                                .foregroundColor(.white)
                                            Text("Bibliotecas Virtuales")
                                                .font(.caption2).bold()
                                                .foregroundColor(.white)
                                                .multilineTextAlignment(.center)
                                            
                                        }.frame(height: 85)
                                            .frame(width: 85, alignment: .top)
                                            .frame(alignment: .top)
                                            .background(Color("BackGround2"))
                                            .clipShape(RoundedRectangle(cornerRadius: 16))
                                            .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                                effect
                                                    .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                            }
                                    }
                                    VStack (alignment: .center, spacing: 0) {
                                        Image(systemName: "checkmark.rectangle.stack")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 30)
                                            .foregroundColor(.white)
                                        Text("Evaluación a docentes")
                                            .font(.caption2).bold()
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.center)
                                        
                                    }.frame(height: 85)
                                        .frame(width: 85, alignment: .top)
                                        .frame(alignment: .top)
                                        .background(Color("BackGround2"))
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                        .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                            effect
                                                .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                        }
                                        .onTapGesture {
                                          print("The whole VStack is tappable now!")
                                        }

                                }
                                .padding(.top, 10)
                                .scrollTargetLayout()
                            }.scrollTargetBehavior(.viewAligned)
                                .padding(.leading, 10)
                            
                            Text("NOTICIAS / EVENTOS")
                                .font(.body).bold()
                                .padding(.top, 20)
                                .padding(.leading, 20)
                            
                            ScrollView(.horizontal) {
                                LazyHStack(spacing: 0) {
                                    VStack (spacing: 0) {
                                        Image("encuesta-web")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 225)
                                    }.frame(height: 225)
                                        .frame(alignment: .top)
                                        .frame(width: .screenWidth - 40)
                                        
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                        .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                            effect
                                                .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                        }
                                    
                                    VStack (spacing: 0) {
                                        Image("beneficios-tarjeta")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(height: 225)
                                    }.frame(height: 225)
                                        .frame(alignment: .top)
                                        .frame(width: .screenWidth - 40)
                                        
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                        .scrollTransition(.interactive, axis: .horizontal) { effect, phase in
                                            effect
                                                .scaleEffect(phase.isIdentity ? 1.0 : 0.95)
                                        }
                                    
                                }
                                .padding(.top, 5)
                                .scrollTargetLayout()
                            }
                            .scrollTargetBehavior(.viewAligned)
                            .padding(.leading, 10)
                            .padding(.bottom, 20)
                            
                        }.frame(maxHeight: .infinity, alignment: .top)
                    }
                    
                }.frame(maxHeight: .infinity, alignment: .top)
                
            }.frame(alignment: .top)
            
        }.frame(alignment: .top)
    }
}

extension CGFloat {
    static var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }
}

#Preview {
    ThirdView()
}
