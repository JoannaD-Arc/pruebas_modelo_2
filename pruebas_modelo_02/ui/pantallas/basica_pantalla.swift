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
        Text("Mensajes pendientes: \(mensajes_falsos.count)")
        
        Spacer()
        
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(usuarios_falsos){ usuario in
                    EtiquetaUsuarioPerfil(usuario: usuario)
                }
            }
        }

        ScrollView(.vertical){
            LazyVStack{
                ForEach(controlador.mensajes){ mensaje in
                    NavigationLink{
                        Text("Esta es la pantalla de \(mensaje)")
                    }
                    label: {
                        VStack{
                            Text("Mensaje de:")
                            Text("\(mensaje.id_usuario ?? "Anónimo")")
                        }
                    }
                    .padding(3)
                }
            }
        }
        Text("Agregar un besito.")
            .onTapGesture{
                controlador.agregar_mensajes()
            }
        
        NavigationLink{
            RegistrarUsuario()
        }
        label:{
                Text("Agregar usuario")
        }
    }
}

#Preview {
    NavigationStack{
        PantallaBasica()
    }
    .environment(ControladorGeneral())
}
