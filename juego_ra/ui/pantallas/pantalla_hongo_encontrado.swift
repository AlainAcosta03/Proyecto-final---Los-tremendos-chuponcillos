//
//  pantalla_hongo_encontrado.swift
//  juego_ra
//
//  Created by alumno on 11/24/25.
//

import SwiftUI

struct PantallaHongoEncontrado: View {
    @Binding var cuerpo_pista: PistaInformacion
    @State var idHongo: String
    @State var boleanoLocal: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [ColoresApp.moradoClaro, ColoresApp.moradoIntenso],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 25) {
                
                VistaCamraHongo(idHongo: idHongo)
                    .frame(height: 800)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(color: .black.opacity(0.25), radius: 8, x: 0, y: 4)
                    .padding(.horizontal)
                
                VStack(spacing: 15) {
                    if !boleanoLocal {
                        Text("¡HONGO ENCONTRADO!")
                            .font(.system(size: 28, weight: .black))
                            .foregroundColor(.white)
                            .shadow(color: ColoresApp.moradoFuerte, radius: 4)
                        
                        Text(cuerpo_pista.informacion)
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(.white.opacity(0.9))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                        
                    } else {
                        Text("🎉 ¡HONGO CAPTURADO!")
                            .font(.system(size: 28, weight: .black))
                            .foregroundColor(.white)
                            .shadow(color: ColoresApp.moradoFuerte, radius: 4)
                        
                        Text("Has encontrado un Gentari.")
                            .font(.system(size: 18))
                            .foregroundColor(.white.opacity(0.9))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .fill(ColoresApp.moradoFuerte.opacity(0.5))
                )
                .padding(.horizontal)
                .shadow(color: .black.opacity(0.25), radius: 6, x: 0, y: 4)
                
                Button(action: {
                    if !cuerpo_pista.pistaCapturada {
                        boleanoLocal = true
                        cuerpo_pista.pistaCapturada = true
                        dismiss()
                    }
                }) {
                    
                    HStack(spacing: 12) {
                        Image(systemName: boleanoLocal ? "checkmark.circle.fill" : "mushroom.fill")
                            .font(.system(size: 32))
                            .foregroundColor(.white)
                        
                        Text(boleanoLocal ? "HONGO CAPTURADO" : "CAPTURAR HONGO")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 15)
                    .background(
                        Capsule()
                            .fill(ColoresApp.moradoOscuro)
                    )
                    .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4)
                }
                
                Spacer()
            }
            .padding(.top)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
