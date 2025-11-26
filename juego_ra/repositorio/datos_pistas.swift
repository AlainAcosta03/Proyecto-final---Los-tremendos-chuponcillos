//
//  pistas.swift
//  juego_ra
//
//  Created by alumno on 11/24/25.
//

import CoreLocation

let pistas = [
    Pista(
        ubicacion:
            CLLocation(latitude: 31.743008, longitude: -106.432851),
        id: "pista_1",
        descripcion: "Podría estar evadiendo impuestos cerca del banco.",
        cuerpo: PistaInformacion(informacion: "Encontraste a Cordy Salinas, el evasor de impuestos."),
    ),
    
    Pista(
        ubicacion: CLLocation(latitude: 31.742568,longitude: -106.432776),
        id: "pista_2",
        descripcion: "Podría estar pateando vagabundos cerca del edificio B",
        cuerpo: PistaInformacion(informacion: "Encontraste a Ramiro Ramirez, el pateador de vagabundos.")
    ),
    Pista(
        ubicacion: CLLocation(latitude: 31.742055,longitude: -106.433385),
        id: "pista_3",
        descripcion: "Pudo haber sido pateado cerca del edificio A",
        cuerpo: PistaInformacion(informacion: "Encontraste a Papu Papuncio, el vagabundo.")
    ),
    Pista(
        ubicacion: CLLocation(latitude: 31.742951,longitude: -106.432457),
        id: "pista_4",
        descripcion: "Podría estar comiendo dumplings cerca de la cafeteria",
        cuerpo: PistaInformacion(informacion: "Encontraste a K-Bron James, el guerrero dragón.")
    )
]

//31.742063695467262, -106.43249267469089



//31.742951, -106.432457
