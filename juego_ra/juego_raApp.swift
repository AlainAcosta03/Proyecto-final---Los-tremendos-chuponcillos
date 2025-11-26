//
//  juego_raApp.swift
//  juego_ra
//
//  Created by alumno on 11/24/25.
//

import SwiftUI

@main
struct juego_raApp: App {
    @State var controlador_juego = ControladorJuego()
    
    var body: some Scene {
        WindowGroup {
            pantalla_inicio()
                .environment(controlador_juego)
        }
    }
}
