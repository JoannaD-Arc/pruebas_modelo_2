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
        HStack{
            Text("Penstagram")
                .font(.title)
                .bold()
        }
        
        Spacer()
        
        HStack{
            Spacer()
            Image(systemName: "magnifyingglass")
            TextField("Buscar un mensaje o usuario", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
        }
        .background(Color.gray)
        .cornerRadius(20)
        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        

        ScrollView(.vertical){
            
            
            ScrollView(.horizontal){
                LazyHStack{
                    ForEach(usuarios_falsos){ usuario in
                        EtiquetaUsuarioPerfil(usuario: usuario)
                    }
                    
                }
            }.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                .frame(height: 200)
            
            
            LazyVStack(alignment: .leading){
                Text("Mensajes")
                    .bold()
                ForEach(mensajes_falsos){ mensaje in
                    PrevisualizacionMensaje(mensaje: mensaje)
                }
            }
            .padding(10)
        }

        HStack{
            Spacer()
            Image(systemName: "paperplane")
                .resizable()
                .scaledToFit()
                .frame(width: 25)
            Spacer()
            Image(systemName: "plus.app")
                .resizable()
                .scaledToFit()
                .frame(width: 25)
            Spacer()
        }
        /*
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
        */
    }
}

#Preview {
    NavigationStack{
        PantallaBasica()
    }
    .environment(ControladorGeneral())
}
