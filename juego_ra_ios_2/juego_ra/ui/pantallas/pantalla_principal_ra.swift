//
//  pantalla_principal_ra.swift
//  juego_ra
//
//  Created by Jadzia Gallegos on 07/11/25.
//
import SwiftUI

struct PantallaPistas: View {
    @State var proveedor_ubicacion = ServicioUbicacion()
    @State var cambiarAHongo: Bool = false
    @State var capturarAHongo_2: Bool = false
    @State var juegoTerminado: Bool = false
    @State private var navigationPath = [String]()
    @State var pistas_mutables = pistas
    
    var body: some View {
        NavigationStack {
            if juegoTerminado {
                VStack {
                    Text("¡Juego Terminado!")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    Button("Reiniciar Juego") {
                        juegoTerminado = false
                        cambiarAHongo = false
                        capturarAHongo_2 = false
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.7))
                .foregroundColor(.white)
                .edgesIgnoringSafeArea(.all)
            } else {
                
                VStack {
                    ForEach($pistas_mutables) { $pista in
                        
                        if pista.puede_ser_recogida(ubicacion: proveedor_ubicacion.ubicacion_actual) {
                            NavigationLink {
                                Text("Esta es la pantalla de la pista.")
                            } label: {
                                Text("Púchame para ir a la pista \(pista.id)")
                                    .padding()
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .buttonStyle(.borderedProminent)
                        } else if pista.esta_en_rango(ubicacion: proveedor_ubicacion.ubicacion_actual) {
                            if let porcentaje = pista.calcular_porcentaje(ubicacion: proveedor_ubicacion.ubicacion_actual) {
                                Text("Distancia en porcentaje \(porcentaje)")

                                switch porcentaje {
                                case 1...10:
                                    NavigationLink(destination: PantallaHongoEncontrado(cuerpo_pista: $pista.cuerpo)) {
                                        Text("Púchame para ir a la pista \(pista.id)")
                                            .padding()
                                            .background(Color.red)
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    }
                                    
                                case 11...20:
                                    Text("Te estás acercando")
                                        .padding()
                                        .background(Color(hue: 0.1, saturation: 0.911, brightness: 0.997))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                case 21...30:
                                    Text("Estás acercándote")
                                        .padding()
                                        .background(Color(hue: 0.315, saturation: 0.773, brightness: 1.0))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                default:
                                    Text("Muy lejos")
                                        .padding()
                                        .background(Color(hue: 0.554, saturation: 0.615, brightness: 1.0))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                        } else {
                            Text("NO se puede obtener la distancia, comprueba tu conexión con el GPS")
                        }
                    }
                    .containerBackground(Color(hue: 0.122, saturation: 0.379, brightness: 1.0), for: .navigation)
                    .foregroundColor(Color.black)
                }
            }
        }
    }
}
