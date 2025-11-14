//
//  ContentView.swift
//  juego_ra
//
//  Created by alumno on 11/5/25.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    @State var servicio_ubicacion = ServicioUbicacion()
    
    var body: some View {
        PantallaPrincipal()
    }
}

#Preview {
    ContentView()
}
