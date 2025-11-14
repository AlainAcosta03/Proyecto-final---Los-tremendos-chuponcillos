//
//  selector_pantalla_pista.swift
//  juego_ra
//
//  Created by alumno on 11/10/25.
//

import SwiftUI

struct SelectorPantallaPista: View {
    var pista_id: String
    
    @State var pista_actual: Pista? = nil
    
    var body: some View {
        Text("")
            .onAppear(){
                obtner_pista()
            }
        
        switch pista_actual{
            case let de_informacion as PistaInformacion:
                Text("Esuna pista con informacion convencional")
            case let de_interaccion as PistaInteractuable:
                Text("Es una pista con botoncitos")
            default:
                Text("Aqui no hay nada")
        }
    }
    
    func obtner_pista(){
        for pista in pistas{
            if pista.id == pista_id{
                pista_actual = pista
                break
            }
        }
        print(("La pista actual es \(pista_actual)"))
    }
}


#Preview {
    SelectorPantallaPista(pista_id: "pista_1")
}
