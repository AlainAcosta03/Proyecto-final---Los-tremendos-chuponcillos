//
//  pantalla_inicio.swift
//  juego_ra
//
//  Created by alumno on 11/21/25.
//

import SwiftUI
 
struct pantalla_inicio: View {
 
    var body: some View {
        NavigationStack {
            ZStack {
                // Fondo con degradado
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 1.0, green: 0.75, blue: 0.55),
                        Color(red: 0.95, green: 0.40, blue: 0.60)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
 
                VStack(spacing: 20) {
 
                    Spacer()
 
                    VStack(spacing: 10) {
                        Text("MUNDO")
                            .font(.system(size: 60, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.bottom, -18.0)
 
                        Text("FÚNGICO")
                            .font(.system(size: 60, weight: .bold))
                            .foregroundColor(.white)
 
                        Text("EL GUARDIÁN DE LOS")
                            .font(.custom("Papyrus", size: 25))
                            .foregroundColor(.white)
                            .padding(.bottom, -18.0)
 
                        Text("GENTARI")
                            .font(.custom("Papyrus", size: 50))
                            .foregroundColor(.yellow)
                    }
 
                    Spacer()
 
                    // Botón inferior → Va a la pantalla de tutorial
                    NavigationLink(destination: Pantalla_Tutorial()) {
                        Text("EMPEZAR")
                            .font(.system(size: 20, weight: .bold))
                            .padding()
                            .background(Color(hue: 0.737, saturation: 0.609, brightness: 0.767))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 30)
                    }
 
                    Spacer().frame(height: 40)
                }
            }
        }
    }
}
 
 
#Preview {
    pantalla_inicio()
}
