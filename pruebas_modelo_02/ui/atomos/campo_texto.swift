//
//  campo.swift
//  pruebas_modelo_02
//
//  Created by alumno on 3/4/26.
//

import SwiftUI

struct CampoTexto: View {
    @Binding var entrada: String
    
    var placeholder: String
    var error: ErrorUI?
    var identificador: String
    
    var body: some View {
        
        TextField(placeholder, text: $entrada)
            .frame(height: 50)
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 1)
            )
            .padding(5)
        if(error?.campo == identificador){
            switch error!.nivel_de_error {
            case .grave:
                Text(error!.error)
                    .foregroundStyle(Color.red)
            case .advertencia:
                Text(error!.error)
                    .foregroundStyle(Color.yellow)
            case .ninguno:
                Text(error!.error)
            }
        }
    }
}

#Preview {
    RegistrarUsuario()
        .environment(ControladorGeneral())
}
