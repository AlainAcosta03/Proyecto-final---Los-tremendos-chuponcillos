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
                
                LinearGradient(
                    colors: [ColoresApp.moradoClaro, ColoresApp.moradoIntenso],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                Image("FONDO")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
                VStack(spacing: 30) {
                    
                    Spacer()
                    
                    VStack(spacing: 5) {
                        Image("LOGO-4-04")
                            .resizable()
                            .frame(width: 1000, height: 500)
                    }
                    .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    NavigationLink(destination: Pantalla_Tutorial()) {
                        
                        HStack(spacing: 12) {
                            Image(systemName: "play.circle.fill")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                            
                            Text("EMPEZAR")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal, 50)
                        .padding(.vertical, 18)
                        .background(
                            Capsule()
                                .fill(ColoresApp.moradoOscuro)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 6, x: 0, y: 4)
                    }
                    
                    Spacer().frame(height: 60)
                }
                .padding()
            }
        }
    }
}


#Preview {
    pantalla_inicio()
}
