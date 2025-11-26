//
//  pantalla_tutorial.swift
//  juego_ra
//
//  Created by alumno on 11/21/25.
//

import SwiftUI

struct Pantalla_Tutorial: View {
    var body: some View {
        NavigationStack {
            ZStack {
                
                LinearGradient(
                    colors: [ColoresApp.azulClaro1, ColoresApp.azulMedio],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                Image("FONDO")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
                VStack(spacing: 35) {
                    
                    Spacer()
                    
                    Image("Anciano")
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    
                    VStack(spacing: 20) {
                        
                        Text(Textomulticolor)
                            .font(.system(size: 28, weight: .semibold))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        
                        Text("""
Los Gentari son criaturas mágicas de otra realidad, pero algunas de ellas se perdieron en tu mundo. Con la ayuda de este dispositivo podrá encontrarlos.
""")
                        .font(.system(size: 24))
                        .foregroundColor(.white.opacity(0.95))
                        .multilineTextAlignment(.center)
                        
                        
                        Text("Sigue las pistas hasta encontrarlos a todos.")
                            .font(.system(size: 24))
                            .foregroundColor(ColoresApp.mentaMedio)
                            .multilineTextAlignment(.center)
                        
                        
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(ColoresApp.azulFuerte.opacity(0.45))
                    )
                    .padding(.horizontal)
                    .shadow(color: .black.opacity(0.25), radius: 6, x: 0, y: 4)
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: PantallaPistas()) {
                        HStack(spacing: 12) {
                            Image(systemName: "arrow.right.circle.fill")
                                .font(.system(size: 32))
                                .foregroundColor(.white)
                            
                            Text("CONTINUAR")
                                .font(.system(size: 26, weight: .bold))
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 60)
                        .padding(.vertical, 18)
                        .background(
                            Capsule()
                                .fill(ColoresApp.azulOscuro)
                        )
                        .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4)
                    }
                    
                    Spacer().frame(height: 50)
                }
                .padding(.horizontal, 30)
            }
        }
    }
    
    private var Textomulticolor: AttributedString {
        var text = AttributedString("Has sido seleccionado como un guardián de los Gentari.")
        if let range = text.range(of: "Gentari.") {
            text[range].foregroundColor = .yellow
        }
        return text
    }
}

#Preview {
    Pantalla_Tutorial()
}
