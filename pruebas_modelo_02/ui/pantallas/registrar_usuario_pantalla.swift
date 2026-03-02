//
//  registrar_usuario_pantalla.swift
//  pruebas_modelo_02
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct RegistrarUsuario: View{
    @State var nombre: String
    @State var instagram:String
    
    @State var edad: Int
    @State var apodo: String
    
    
    var body: some View{
        TextField("Nombre: ", text: $nombre)
        TextField("Instagram: ", text: $instagram)
        
        TextField("Edad: ", text: $nombre)
        TextField("Apodo: ", text: $apodo)
    }
}

#Preview {
    
}
