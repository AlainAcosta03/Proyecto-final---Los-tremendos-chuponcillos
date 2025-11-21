//
//  pistas.swift
//  juego_ra
//
//  Created by Jadzia Gallegos on 05/11/25.
//
import CoreLocation

let pistas = [
    Pista(
        ubicacion:
            CLLocation(latitude: 31.74249399834499, longitude: -106.43208805090772),
        id: "pista_1",
        cuerpo:
            PistaInformacion(
                informacion: "Texto para mostrar al usario"
            )
    ),
    
    Pista(
        ubicacion: CLLocation(
            latitude: 31.74205192244658,
            longitude: -106.43238899466401
        ),
        id: "pista_2",
        cuerpo: PistaInteractuable(
            informacion: "Texto de prueba para la pantalla interactuable 2",
            interacciones: [
                Boton(
                    mensaje: "Puchopicame para ir a la pista 2",
                    conecta_con_pista: "pista_2")
            ]
        )
    ),
    Pista(
        ubicacion: CLLocation(
            latitude: 31.74224848769289,
            longitude: -106.432376911223
        ),
        id: "pista_3",
        cuerpo: PistaInteractuable(
            informacion: "Texto de prueba para la pantalla interactuable 3",
            interacciones: [
                Boton(
                    mensaje: "Puchopicame para ir a la pista 3",
                    conecta_con_pista: "pista_3")
            ]
        )
    ),
    Pista(
        ubicacion: CLLocation(
            latitude: 31.742126375508825,
            longitude: -106.43231309354812
        ),
        id: "pista_4",
        cuerpo: PistaInteractuable(
            informacion: "Texto de prueba para la pantalla interactuable 4",
            interacciones: [
                Boton(
                    mensaje: "Puchopicame para ir a la pista 4",
                    conecta_con_pista: "pista_4")
            ]
        )
    )
]

