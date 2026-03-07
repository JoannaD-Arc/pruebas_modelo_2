//
//  perfil_mensaje_chiquito.swift
//  pruebas_modelo_02
//
//  Created by Jose de la luz Olivares Gandara on 06/03/26.
//

import SwiftUI

struct EtiquetaMensajePerfil: View {
    var usuario: Usuario
    
    var body: some View {
        
        ZStack{
            
            EllipticalGradient(colors:[Color.yellow, Color.orange, Color.red, Color.purple], center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadiusFraction: 0.25, endRadiusFraction: 0.5)
                .clipShape(Circle())

            Circle()
                .foregroundStyle(Color.white)
                .clipShape(Circle())
                .frame(width: 375)
                
            
            Image("images")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            
        }
        .scaledToFit()
    }
}

#Preview {
    EtiquetaMensajePerfil(usuario: usuarios_falsos[0])
}
