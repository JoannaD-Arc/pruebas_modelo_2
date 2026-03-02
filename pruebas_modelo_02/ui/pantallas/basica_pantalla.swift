//
//  pantalla_basica.swift
//  pruebas_modelo_02
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct PantallaBasica: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        Text("Esta pantalla se mueve a la siguiente opción.")
        
        ForEach(controlador.mensajes){ mensaje in
            NavigationLink{
                Text("Esta es la pantalla de \(mensaje.texto)")
            }
            label: {
                Text("Picale para ir a pantalla de \(mensaje.texto)")
            }
            .onTapGesture {
                print("Si ves esto en consola es que funcionó.")
            }
            .onAppear {
                print("Hola, soy la vista de: \(mensaje.texto)")
            }
        }
        
        Text("Agregar un besito.")
            .onTapGesture{
                controlador.agregar_mensajes()
            }
    }
}

#Preview {
    NavigationStack{
        PantallaBasica()
    }
    .environment(ControladorGeneral())
}
