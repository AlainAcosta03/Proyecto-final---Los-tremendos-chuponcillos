//
//  camara_hongo.swift
//  juego_ra
//
//  Created by alumno on 11/19/25.
//

import SwiftUI

struct VistaCamraHongo: View {
    @State var servicio_camara = ServicioCamara()
    var idHongo: String
    
    
    var body: some View{
        ZStack{
            GeometryReader{ _ in
                CamaraPantallita(capa_sesion: servicio_camara.obtener_previsualizacion_camara())
                    .ignoresSafeArea()
            }
            switch idHongo{
            case "pista_1":
                Image("Evasor").resizable().frame(width: 500, height: 500)
            case "pista_2":
                Image("Patea-vagabundos").resizable().frame(width: 500, height: 500)
            case "pista_3":
                Image("Madreado").resizable().frame(width: 500, height: 500)
            case "pista_4":
                Image("Guerrero-dragon").resizable().frame(width: 500, height: 500)
            default:
                Image("hongo").resizable().frame(width: 500, height: 500)
            }
            
            
        }
        .onAppear {
            servicio_camara.iniciar_session()
        }
        .onDisappear() {
            servicio_camara.detener()
        }
    }
}
