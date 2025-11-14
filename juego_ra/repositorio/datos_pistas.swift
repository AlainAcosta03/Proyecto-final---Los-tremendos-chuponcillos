//
//  pistas.swift
//  juego_ra
//
//  Created by alumno on 11/5/25.
//

import CoreLocation

let pistas = [
    Pista(
        ubicacion: CLLocation(latitude: 31.742971445559355, longitude: -106.43181874680712),
        id: "pista_1",
        cuerpo: PistaInformacion(informacion: "Texto para mostrar al usuario")
    ),
    Pista(
        ubicacion: CLLocation(latitude: 31.743285984734303, longitude: -106.4328133191299),
        id: "pista_2",
        cuerpo: PistaInformacion(informacion: "Texto para mostrar al usuario")
    ),
    Pista(
        ubicacion: CLLocation(latitude: 31.742680782980194, longitude: -106.43070915072008),
        id: "pista_3",
        cuerpo: PistaInformacion(informacion: "Texto para mostrar al usuario")
    ),
    Pista(
        ubicacion: CLLocation(latitude: 31.74358318612698, longitude: -106.43253809127324),
        id: "pista_4",
        cuerpo: PistaInformacion(informacion: "Texto para mostrar al usuario")
    ),
    Pista(
        ubicacion: CLLocation(latitude: 31.743055653002664, longitude: -106.43327345351133),
        id: "pista_5",
        cuerpo: PistaInformacion(informacion: "Texto para mostrar al usuario")
    ),
    
    Pista(
        ubicacion: CLLocation(latitude: 31.74208436726433, longitude: -106.43241852792077),
        id: "pista_6",
        cuerpo: PistaInteractuable(
            informacion: "Texto de prueba para la pantalla interactuable",
            interacciones: [
                Boton(
                    mensaje: "Puchopicame para ir a la pista 1",
                    conecta_con_pista: "pista_1")
            ]))
]



