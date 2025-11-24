//
//  pantalla_tutorial.swift
//  juego_ra
//
//  Created by alumno on 11/21/25.
//

import SwiftUI
 
struct Pantalla_Tutorial: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color.black.ignoresSafeArea()
                VStack(spacing: 30) {
                    Spacer()
                    // Primer párrafo con palabra en amarillo
                    Text(Textomulticolor)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    // Segundo párrafo en blanco
                    Text("""
Phasellus lacinia lectus velit, vitae tempor nisi sollicitudin vitae. Phasellus condimentum erat nulla, ut euismod sem volutpat eget.
""")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    // Tercer párrafo en azul/cyan
                    Text("Donec rutrum lacus et enim varius luctus.")
                        .font(.system(size: 18))
                        .foregroundColor(Color.cyan)
                        .multilineTextAlignment(.center)
                    Spacer()

                    NavigationLink(destination: PantallaPrincipal()) {
                        Text("CONTINUAR")
                            .font(.system(size: 22, weight: .bold))
                            .padding()
                            .background(Color(hue: 0.561, saturation: 0.609, brightness: 0.767))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                    }
                    Spacer().frame(height: 40)
                }
                .padding(.horizontal, 30)
            }
        }
    }
    // MARK: - Texto con formato de color
    private var Textomulticolor: AttributedString {
        var text = AttributedString("Lorem ipsum dolor sit amet, consectetur Gentari.")
        if let range = text.range(of: "Gentari.") {
            text[range].foregroundColor = .yellow
        }
        return text
    }
}
 
#Preview {
    Pantalla_Tutorial()
}
