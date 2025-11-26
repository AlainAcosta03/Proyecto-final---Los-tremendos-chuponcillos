//
//  pantalla_pistas.swift
//  juego_ra
//
//  Created by alumno on 11/12/25.

import SwiftUI

struct PantallaPistas: View {
    @State var proveedor_ubicacion = ServicioUbicacion()
    @State var cambiarAHongo: Bool = false
    @State var capturarAHongo_2: Bool = false
    @State var juegoTerminado: Bool = false
    @State private var navigationPath = [String]()
    @State var pistas_mutables = pistas
    @State var captura_disponible: Bool = false
    
    var body: some View {
        NavigationStack {
            
            if juegoTerminado {
                ZStack {
                    LinearGradient(
                        colors: [ColoresApp.azulClaro1, ColoresApp.azulClaro2],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .ignoresSafeArea()
                    
                    Image("FONDO")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                    
                }
            }
            
            else {
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
                    
                    ScrollView {
                        VStack(spacing: 20) {
                            
                            VStack(spacing: 10) {
                                Text("BÚSQUEDA DE HONGOS")
                                    .font(.system(size: 32, weight: .black))
                                    .foregroundColor(.white)
                                    .shadow(color: ColoresApp.moradoFuerte, radius: 4)
                                
                                let pistasRestantes =
                                pistas_mutables.filter { !$0.cuerpo.pistaCapturada }.count
                                
                                if pistasRestantes == 0 {
                                    HStack {
                                        Text("¡COMPLETADO!")
                                            .font(.system(size: 28, weight: .bold))
                                        Text("🏆")
                                            .font(.system(size: 32))
                                    }
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(ColoresApp.mentaClaro)
                                    )
                                    .foregroundColor(ColoresApp.mentaFuerte)
                                    .shadow(color: .black.opacity(0.2), radius: 5)
                                    
                                    Image("Anciano")
                                        .resizable()
                                        .frame(width: 400, height: 400)
                                    VStack(spacing: 20) {
                                        
                                        
                                        Text("""
            Gracias por ayudarnos. Estamos agradecidos.
            """)
                                        .font(.system(size: 24))
                                        .foregroundColor(.white.opacity(0.95))
                                        .multilineTextAlignment(.center)
                                        
                                        Text("""
            Cumpliste con tu deber y salvaste a los papus perdidos. Pero la chamba nunca termina...
            """)
                                        .font(.system(size: 24))
                                        .foregroundColor(.white.opacity(0.95))
                                        .multilineTextAlignment(.center)
                                        
                                        Text("""
            Por su naturaleza, no dudo que vuelvan a perderse. Asi que por favor, considera ayudarnos de nuevo algún día, Papupro.
            """)
                                        .font(.system(size: 24))
                                        .foregroundColor(.white.opacity(0.95))
                                        .multilineTextAlignment(.center)
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(ColoresApp.moradoFuerte.opacity(0.45))
                                    )
                                    .padding(.horizontal)
                                    .shadow(color: .black.opacity(0.25), radius: 6, x: 0, y: 4)
                                }
                                
                                else {
                                    HStack(spacing: 15) {
                                        ZStack {
                                            Circle()
                                                .fill(Color.white)
                                                .frame(width: 60, height: 60)
                                            
                                            Text("\(pistasRestantes)")
                                                .font(.system(size: 30, weight: .black))
                                                .foregroundColor(ColoresApp.moradoFuerte)
                                        }
                                        
                                        Text("Hongos\nRestantes")
                                            .font(.system(size: 18, weight: .bold))
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.leading)
                                        
                                        Text("¡LEE Y SIGUE LAS PISTAS PAPU 🤩!")
                                            .font(.system(size: 18, weight: .bold))
                                            .foregroundColor(.yellow)
                                            .multilineTextAlignment(.leading)
                                    }
                                    .padding()
                                    .background(
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(ColoresApp.moradoIntenso.opacity(0.5))
                                    )
                                }
                            }
                            .padding(.top, 20)
                            
                            
                            ForEach($pistas_mutables) { $pista in
                                if !pista.cuerpo.pistaCapturada {
                                    VStack(spacing: 12) {
                                        
                                        if pista.puede_ser_recogida(ubicacion: proveedor_ubicacion.ubicacion_actual) {
                                            
                                            NavigationLink(
                                                destination: PantallaHongoEncontrado(cuerpo_pista: $pista.cuerpo, idHongo: $pista.id)
                                            ) {
                                                BotonPistaHongo(
                                                    emoji: "🍄",
                                                    titulo: "¡Presiona aqui para capturar papu 😎!",
                                                    subtitulo: "Pista: \(pista.descripcion)",
                                                    color: ColoresApp.verdeIntenso,
                                                    porcentaje: 0
                                                )
                                            }
                                        }
                                        
                                        else if pista.esta_en_rango(ubicacion: proveedor_ubicacion.ubicacion_actual),
                                                let porcentaje = pista.calcular_porcentaje(ubicacion: proveedor_ubicacion.ubicacion_actual) {
                                            
                                            switch porcentaje {
                                                
                                            case 1...10:
                                                NavigationLink(
                                                    destination: PantallaHongoEncontrado(cuerpo_pista: $pista.cuerpo, idHongo: $pista.id)
                                                ) {
                                                    BotonPistaHongo(
                                                        emoji: "🍄",
                                                        titulo: "¡Presiona aqui para capturar papu 😎!",
                                                        subtitulo: "Pista: \(pista.descripcion)",
                                                        color: ColoresApp.verdeIntenso,
                                                        porcentaje: porcentaje
                                                    )
                                                }
                                                
                                            case 11...20:
                                                BotonPistaHongo(
                                                    emoji: "👀",
                                                    titulo: "Te estás acercando",
                                                    subtitulo: "Pista: \(pista.descripcion)",
                                                    color: ColoresApp.azulFuerte,
                                                    porcentaje: porcentaje
                                                )
                                                
                                            case 21...30:
                                                BotonPistaHongo(
                                                    emoji: "🚶",
                                                    titulo: "Estás acercándote",
                                                    subtitulo: "Pista: \(pista.descripcion)",
                                                    color: ColoresApp.azulFuerte,
                                                    porcentaje: porcentaje
                                                )
                                                
                                            default:
                                                BotonPistaHongo(
                                                    emoji: "🗺️",
                                                    titulo: "Muy lejos",
                                                    subtitulo: "Pista: \(pista.descripcion)",
                                                    color: ColoresApp.azulFuerte,
                                                    porcentaje: porcentaje
                                                )
                                            }
                                        }
                                        
                                        else {
                                            HStack {
                                                Image(systemName: "location.slash.fill")
                                                    .font(.system(size: 24))
                                                
                                                Text("Fuera de rango")
                                                    .font(.system(size: 16, weight: .semibold))
                                            }
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(maxWidth: .infinity)
                                            .background(
                                                RoundedRectangle(cornerRadius: 15)
                                                    .fill(Color.gray.opacity(0.6))
                                            )
                                        }
                                    }
                                    .padding(.horizontal)
                                }
                            }
                            
                            Spacer(minLength: 40)
                        }
                    }
                }
            }
        }
    }
}




