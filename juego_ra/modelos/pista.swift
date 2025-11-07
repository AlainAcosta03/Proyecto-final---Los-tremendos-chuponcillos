//
//  pista.swift
//  juego_ra
//
//  Created by Jadzia Gallegos on 05/11/25.
//

import CoreLocation

struct Pista: Identifiable{
    let ubicacion: CLLocation
    let id: String
    let cuerpo: CuerpoPista
}
