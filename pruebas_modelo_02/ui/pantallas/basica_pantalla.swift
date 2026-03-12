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
       
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.white)
            VStack{
                HStack{
                    Text("Blåhajgram")
                        .font(.title)
                        .bold()
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.pink, .teal],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                }
                
                Spacer()
                
                
                
                ScrollView(.vertical){
                    
                    HStack{
                        Spacer()
                        Image(systemName: "magnifyingglass")
                        TextField("Buscar un mensaje o usuario", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                    }
                    .background(Color.acentoGris02)
                    .cornerRadius(20)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                    
                    ScrollView(.horizontal){
                        LazyHStack{
                            ForEach(usuarios_falsos){ usuario in
                                EtiquetaUsuarioPerfil(usuario: usuario)
                            }
                            
                        }
                    }
                    .scrollIndicators(.hidden)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                    .frame(height: 220)
                    
                    
                    LazyVStack(alignment: .leading){
                        HStack{
                            Text("Mensajes")
                                .bold()
                            Spacer()
                            Text("No leídos: \(mensajes_falsos.count)")
                                .foregroundStyle(Color.blue)
                        }
                        
                        ForEach(mensajes_falsos){ mensaje in
                            PrevisualizacionMensaje(mensaje: mensaje)
                        }
                    }
                    .padding(10)
                }
                .scrollIndicators(.hidden)
                
                
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
    }
}

#Preview {
    NavigationStack{
        PantallaBasica()
    }
    .environment(ControladorGeneral())
}
