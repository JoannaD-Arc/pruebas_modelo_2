//
//  navegador_basico.swift
//  pruebas_modelo_02
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct NavegadorBasico: View {
    @Environment(ControladorGeneral.self) var control
    var body: some View {
        /*NavigationStack{
            PantallaBasica()
        }*/
        
        TabView{
            Tab("", systemImage: "house"){
                Text("Esta es la pantalla de inicio.")
            }
            Tab("", systemImage: "person.badge.plus"){
                NavigationStack{
                    RegistrarUsuario()
                }
            }
            Tab("", systemImage: "paperplane"){
                NavigationStack{
                    PantallaBasica()
                }
            }
            .badge(control.mensajes.count)
            
            Tab("", systemImage: "person"){
                NavigationStack{
                    PerfilPantalla()
                }
            }
        }
    }
}

#Preview {
    NavegadorBasico()
        .environment(ControladorGeneral())
}
