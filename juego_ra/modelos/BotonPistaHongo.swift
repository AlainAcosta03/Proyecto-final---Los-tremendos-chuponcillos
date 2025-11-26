//
//  BotonPistaHongo.swift
//  juego_ra
//
//  Created by alumno on 11/24/25.
//

import SwiftUI

struct BotonPistaHongo: View {
    let emoji: String
    let titulo: String
    let subtitulo: String
    let color: Color
    let porcentaje: Double
    
    var body: some View {
        HStack(spacing: 15) {
            
            ZStack {
                Circle()
                    .fill(.black)
                    .frame(width: 65, height: 65)

                Image("HongoIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
            }
            
            VStack(alignment: .leading, spacing: 6) {
                Text(titulo)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                
                Text(subtitulo)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.yellow.opacity(0.9))
                
                GeometryReader { geo in
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white.opacity(0.3))
                            .frame(height: 10)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: geo.size.width * (1 - porcentaje/100), height: 10)
                    }
                }
                .frame(height: 10)
            }
            
            Spacer()
            
            Text("\(Int(100 - porcentaje))%")
                .font(.system(size: 22, weight: .black))
                .foregroundColor(.white)
        }
        .padding(.vertical, 20)
        .padding(.horizontal)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(color)
        )
        .shadow(color: .black.opacity(0.25), radius: 6)
    }
}
