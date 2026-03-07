//
//  mensaje_caja.swift
//  pruebas_modelo_02
//
//  Created by Jose de la luz Olivares Gandara on 06/03/26.
//

import SwiftUI

struct CajaDeMensajePerfil: View {
    var usuario: Usuario
    var body: some View {
        HStack {
            VStack {
                EtiquetaMensajePerfil(usuario: usuarios_falsos[0])
            }
           
            VStack {
                Text("")
            }
        }
        .frame(width: 75)
        
    }
}

#Preview {
    CajaDeMensajePerfil(usuario: usuarios_falsos[0])
}
