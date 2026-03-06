//
//  perfil_usuario_chiquito.swift
//  pruebas_modelo_02
//
//  Created by alumno on 3/6/26.
//

import SwiftUI

struct EtiquetaUsuarioPerfil: View {
    var usuario: Usuario
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Nota...")
            ZStack(alignment: .bottom){
                Image("images")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())

                HStack{
                    Spacer()
                    ZStack{
                        Circle()
                            .stroke(style: StrokeStyle(lineWidth: 5))
                            .foregroundStyle(Color.white)
                            .frame(width: 20)
                            
                        Circle()
                            .foregroundStyle(Color.green)
                            .frame(width:18)
                    }

                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 15))
                // .background(Color.red)

            }
            .frame(width: 100)
            HStack{
                Text("\(usuario.apodo)")
            }
        }

    }
}

#Preview{
    EtiquetaUsuarioPerfil(usuario: usuarios_falsos[0])
}
