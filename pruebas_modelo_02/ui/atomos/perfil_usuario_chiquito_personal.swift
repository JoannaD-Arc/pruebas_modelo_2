//
//  File.swift
//  pruebas_modelo_02
//
//  Created by Jose de la luz Olivares Gandara on 11/03/26.
//

import SwiftUI
 
struct EtiquetaUsuarioPerfilPersonal: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            VStack{

                ZStack {
                    ZStack(alignment: .bottomTrailing) {
                        Image("Blahaj")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())

                        Image(systemName: "plus.circle.fill")
                            .font(.title2)
                            .foregroundStyle(.white, .pink)
                    }
                }
                .frame(width: 75)
                .overlay(alignment: .top) {
                    ZStack {
                        Image(systemName: "message.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.black)
                            .shadow(radius: 3)

                        Image(systemName: "message.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.white)

                        Text("Nota..")
                            .font(.caption)
                    }
                    .frame(width: 50)
                }

            }


        }
       
        .frame(width: 75)
    }
}
#Preview {
    PerfilPantalla()
        .environment(ControladorGeneral())
}
