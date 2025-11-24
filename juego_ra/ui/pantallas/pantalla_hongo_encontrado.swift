//
//  pantalla_hongo_encontrado.swift
//  juego_ra
//
//  Created by alumno on 11/24/25.
//

import SwiftUI

struct PantallaHongoEncontrado: View {
    @Binding var cuerpo_pista: PistaInformacion
    
    var body: some View{
        VistaCamraHongo()
        VStack{
            if(cuerpo_pista.pistaCapturada == false){
                Text("\(cuerpo_pista.informacion)")
            }else {
                Text("Gentari encontrado")
            }
            
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                if(cuerpo_pista.pistaCapturada == false){
                    cuerpo_pista.pistaCapturada = true
                }
            }
            
        }
        .frame(height: 300)
        .containerBackground(Color(hue: 0.122, saturation: 0.379, brightness: 1.0), for: .navigation)
        .foregroundColor(Color.black)
    }
}
