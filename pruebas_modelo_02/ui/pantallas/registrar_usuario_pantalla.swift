//
//  registrar_usuario_pantalla.swift
//  pruebas_modelo_02
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

enum CamposRegistrarUsuarios: String{
    case nombre = "nombre"
    case apodo = "apodo"
    case edad = "edad"
    case instagram = "instagram"
}

struct RegistrarUsuario: View{
    @Environment(ControladorGeneral.self) var controlador
    @Environment(\.dismiss) var salir

    
    @State var nombre: String = ""
    @State var instagram:String = ""
    @State var edad: String = ""
    @State var apodo: String = ""
    
    @State var es_numero: Bool = false
    
    @State var error: ErrorUI? = nil
    
    var body: some View{
        

        VStack{
            
            CampoTexto(
                entrada: $nombre,
                placeholder: "Nombre",
                error: error,
                identificador: CamposRegistrarUsuarios.nombre.rawValue
            )
            
            CampoTexto(
                entrada: $apodo,
                placeholder: "Apodo",
                error: error,
                identificador: CamposRegistrarUsuarios.apodo.rawValue
            )
            CampoTexto(
                entrada: $edad,
                placeholder: "Edad",
                error:error,
                identificador: CamposRegistrarUsuarios.edad.rawValue
            )
            CampoTexto(
                entrada: $instagram,
                placeholder: "Instagram",
                error:error,
                identificador: CamposRegistrarUsuarios.instagram.rawValue
            )
            
            Button(action: {validar_entradas()}){
                HStack{
                    Image(systemName: "person.fill.badge.plus")
                    Text("Agregar usuario")
                }
            }
        }
        .padding()
    }
    
    func validar_entradas(){
        if(nombre.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuarios.nombre.rawValue,
                error: "No se puede dejar el campo de nombre vacío.",
                nivel_de_error: .grave
            )
            
            return
            
        }
        if(apodo.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuarios.apodo.rawValue,
                error: "No pusiste apodo, pero 'ta bien como quieras.",
                nivel_de_error: .ninguno
            )
            
            return
            
            
            
        }
        
        if(edad.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuarios.edad.rawValue,
                error: "No se puede dejar el campo de edad vacío.",
                nivel_de_error: .grave
            )
            return

        }else if(!edad.isEmpty){
                es_numero = Int(edad) != nil
                if(!es_numero){
                error = ErrorUI(
                    campo: CamposRegistrarUsuarios.edad.rawValue,
                    error: "La edad debe ser un número.",
                    nivel_de_error: .grave
                )
                    return
            }
        }
        
        if(instagram.isEmpty){
            error = ErrorUI(
                campo: CamposRegistrarUsuarios.instagram.rawValue,
                error: "Agrega instagram o te pego.",
                nivel_de_error: .advertencia
            )
            return
        }
        
        
        controlador.agregar_usuario(crear_usuario())
        salir()
        
        nombre = ""
        apodo  = ""
        edad   = ""
        instagram = ""
    }
    
    func crear_usuario() -> Usuario{
        return Usuario(nombre: nombre, edad: Int(edad)! , apodo: apodo, instagram: instagram)
    }
}

#Preview {
    RegistrarUsuario()
        .environment(ControladorGeneral())
}
