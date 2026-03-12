//
//  perfil_mensaje_chiquito.swift
//  pruebas_modelo_02
//
//  Created by Jose de la luz Olivares Gandara on 06/03/26.
//

import SwiftUI

struct PrevisualizacionMensaje: View {
    var mensaje: Mensaje
    
    var body: some View {
        HStack{
            
            ZStack{
                EllipticalGradient(colors:[Color.teal, Color.white, Color.pink], center: .leading, startRadiusFraction: 0.95, endRadiusFraction: 0.4)
                    .scaledToFit()
                    .clipShape(Circle())
                Image("Blahaj")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay{
                        Circle()
                            .stroke(.white, lineWidth: 5)
                    }
                    .frame(width: 60)
            }.frame(minWidth: 75, maxWidth: 75)

            VStack(alignment: .leading){
                HStack{
                    Text("\(mensaje.id_usuario ?? "Anónimo")")
                  


                }
 
                Text("\(mensaje.texto)")
                    .font(.subheadline)
                    .bold()
        
            }
            .scaledToFit()
            .padding(5)
            
            Spacer()
            Circle()
                .foregroundStyle(Color.blue)
                .frame(width: 10)
        }
        
    }
}

#Preview {
    PrevisualizacionMensaje(mensaje: mensajes_falsos[0])
        .padding(10)
}
