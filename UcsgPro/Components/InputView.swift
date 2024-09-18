//
//  InputView.swift
//  UcsgPro
//
//  Created by Eduardo Gomez on 9/9/24.
//

import SwiftUI

struct InputView: View {
    @Binding var texto: String
    @State private var isSecured: Bool = true
    let titulo: String
    let placeHolder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(titulo)
                .fontWeight(.semibold)
                .font(.footnote)
            HStack {
                if isSecureField {
                    Image(systemName: "key.fill")
                        .foregroundColor(Color(.lightGray))
                    
                    ZStack(alignment: .trailing) {
                                Group {
                                    if isSecured {
                                        SecureField(placeHolder, text: $texto)
                                            .font(.system(size: 14))
                                    } else {
                                        TextField(placeHolder, text: $texto)
                                            .font(.system(size: 14))
                                    }
                                }.padding(.trailing, 32)

                                Button(action: {
                                    isSecured.toggle()
                                }) {
                                    Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                        .accentColor(.gray)
                                }
                            }
                } else {
                    Image(systemName: "person.fill")
                        .foregroundColor(Color(.lightGray))
                    TextField(placeHolder, text: $texto)
                        .font(.system(size: 14))
                }
            }
            
            Divider()
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(texto: .constant(""), titulo: "Titulo", placeHolder: "Usuario Servicios en Línea")
    }
}
