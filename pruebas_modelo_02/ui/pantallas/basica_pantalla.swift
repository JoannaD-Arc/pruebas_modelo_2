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
        
        
        ScrollView(.horizontal){
            LazyHStack{
                ForEach(usuarios_falsos){ usuario in
                    EtiquetaUsuarioPerfil(usuario: usuario)
                }
                
            }
        }.padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
            .frame(height: 200)
        
        ScrollView(.vertical){
            LazyVStack(alignment: .leading){
                Text("Mensajes")
                ForEach(mensajes_falsos){ mensaje in
                    
                }
            }
        }

        ScrollView(.vertical){
            LazyVStack{
                HStack{
                    Text("Mensajes")
                        .font(.title2)
                    Spacer()
                }
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                .bold()
                
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
