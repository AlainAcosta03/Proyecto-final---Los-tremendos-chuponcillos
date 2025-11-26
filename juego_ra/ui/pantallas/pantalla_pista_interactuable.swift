//
//  pantalla_pista_interactuable.swift
//  juego_ra
//
//  Created by Jadzia Gallegos on 10/11/25.
//
import SwiftUI

struct PantallaPistaInteractuable: View {
    var cuerpo_pista: PistaInteractuable
    @Environment(ControladorJuego.self) var controlador
    
    var body: some View {
        Text(cuerpo_pista.informacion)
        
        ForEach(cuerpo_pista.interacciones){boton in
            VStack{
                Text(boton.mensaje)
                    .onTapGesture {
                        print("Ir a la pista \(boton.conecta_con_pista)")
                    }
            }
        }
    }
    
    
}

#Preview {
    PantallaPistaInteractuable(cuerpo_pista: PistaInteractuable(informacion: "Texto vacio", interacciones: [Boton(mensaje: "Mensaje de boton", conecta_con_pista: "pista_1")])).environment(ControladorJuego())
    
}
