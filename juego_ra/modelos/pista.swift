//
//  pista.swift
//  juego_ra
//
//  Created by Jadzia Gallegos on 05/11/25.
//

import CoreLocation

struct Pista: Identifiable{
    let ubicacion: CLLocation
    var distancia_minima: Double = 5.0
    var distancia_maxima: Double = 100.0
    let id: String
    var cuerpo: PistaInformacion
    
    func calcular_porcentaje(ubicacion: CLLocation?) -> Double? {
        if(ubicacion == nil){
                    return nil
                }
                let distancia_a_la_pista = ubicacion!.distance(from: self.ubicacion)
                
                let porcentaje = (distancia_a_la_pista - distancia_minima) * 100 /
                (distancia_maxima - distancia_minima)
                
                // Asegurar que el valor esté entre 0 y 100
                return max(0, min(100, porcentaje))
    }
    
    func esta_en_rango(ubicacion: CLLocation?) -> Bool{
        if(ubicacion == nil){
            return false
        }
        
        let distancia_a_la_pista = ubicacion!.distance(from: self.ubicacion)
        
        if(distancia_a_la_pista > distancia_maxima){
            return false
        }
        
        return true
    }
    
    func puede_ser_recogida(ubicacion: CLLocation?) -> Bool{
        if(ubicacion == nil){
            return false
        }
        
        let distancia_a_la_pista = ubicacion!.distance(from: self.ubicacion)
        
        if(distancia_a_la_pista < distancia_minima){
            return true
        }
        
        return false
    }

}
