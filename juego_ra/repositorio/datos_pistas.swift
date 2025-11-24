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
        cuerpo: PistaInformacion(informacion: "Texto para Hongo 1"),
    ),
    
    Pista(
        ubicacion: CLLocation(latitude: 31.74205192244658,longitude: -106.43238899466401),
        id: "pista_2",
        cuerpo: PistaInformacion(informacion: "Texto Para Hongo 2")
    ),
    Pista(
        ubicacion: CLLocation(latitude: 31.74224848769289,longitude: -106.432376911223),
        id: "pista_3",
        cuerpo: PistaInformacion(informacion: "Texto Para Hongo 3")
    ),
    Pista(
        ubicacion: CLLocation(latitude: 31.742126375508825,longitude: -106.43231309354812),
        id: "pista_4",
        cuerpo: PistaInformacion(informacion: "Texto Para Hongo 4")
    )
]

