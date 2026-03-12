//
//  perfil_pantalla.swift
//  pruebas_modelo_02
//
//  Created by Jose de la luz Olivares Gandara on 11/03/26.
//

import SwiftUI

struct PerfilPantalla: View {
    @Environment(ControladorGeneral.self) var controlador
    var body: some View {
        ScrollView(.vertical){
            ZStack{
                VStack{
                    HStack{
                        Image(systemName: "star.fill")
                            .font(.title)
                            .foregroundStyle(Color.pink)
                            .scaledToFit()
                        Spacer()
                        Text("\(usuarios_falsos[0].apodo)")
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.pink, .teal],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .font(.title)
                            .bold()
                        
                        Spacer()

                        Image(systemName: "gearshape.fill")
                            .font(.title)
                            .foregroundStyle(Color.teal)
                            .scaledToFit()
                    }
    
                    .padding()
                    Spacer()
                    HStack(alignment: .bottom){
                        EtiquetaUsuarioPerfilPersonal()
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("\(usuarios_falsos[0].nombre)")
                                    .bold()
                                Text("she/her")
                                    .foregroundStyle(Color.gray)
                                Spacer()
                            }
                            HStack{
                                VStack(alignment: .leading){
                                   Text("26")
                                        .bold()
                                   Text("posts")
                                }
                                Spacer()
                                VStack(alignment: .leading){
                                    Text("150")
                                        .bold()
                                    Text("posts")
                                }
                                Spacer()
                                VStack(alignment: .leading){
                                    Text("243")
                                        .bold()
                                    Text("posts")
                                }
                                Spacer()
                            }
                           
                        }
                        
                    }.padding(25)
                    
                    HStack{
                        Text("Escritora, pianista y presidenta del club 🎹 A veces pienso demasiado… Just Monika.")
                        Spacer()
                    }
                    .padding(10)
                    
                    HStack{
                        Button(action: { } ){
                            HStack{
                                Text("Editar Perfil")
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        .padding(50)
                        .frame(height: 40)
                        .background(RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.pink))
                        
                        Button(action: { } ){
                            HStack{
                                Text("Compartir Perfil")
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        .padding(25)
                        .frame(height: 40)
                        .background(RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.teal))
                        
                    }
                    
                    HStack{
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            LazyHStack(spacing: 15) {
                                VStack{
                                    Image(systemName: "plus.circle.fill")
                                        .foregroundStyle(Color.teal)
                                        .font(Font.largeTitle.bold())
                                        .padding()
                                    Text("Nueva Historia")
                                }
                        

                                ForEach(0..<5) { _ in
                                    
                                    VStack{
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

                                        
                                        Text("Historia")
                                    }

                                }
                            }
                            .padding(.horizontal)
                        }.frame(height: 100)
                    }
                    HStack{
                        Text("Galería")
                            .foregroundStyle(.pink)
                            .font(.title2)
                            .bold()
                        Image(systemName: "photo.fill")
                            .foregroundStyle(.pink)
                    }
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 2), count: 3), spacing: 2) {
                        ForEach(0..<10) { _ in
                            Image("BlahajPerfil")
                                .resizable()
                                .scaledToFill()
                                .frame(height: 120)
                                .clipped()
                        }

                    }
                }
            }
        }
    }
}

#Preview {
    PerfilPantalla()
        .environment(ControladorGeneral())
}
