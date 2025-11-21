//
//  camara_hongo.swift
//  juego_ra
//
//  Created by alumno on 11/19/25.
//

import SwiftUI

struct VistaCamraHongo: View {
    @State var servicio_camara = ServicioCamara()
    
    
    var body: some View{
        ZStack{
            GeometryReader{ _ in
                CamaraPantallita(capa_sesion: servicio_camara.obtener_previsualizacion_camara())
                    .ignoresSafeArea()
            }
            Image("hongo").resizable()
        }
        .onAppear {
            servicio_camara.iniciar_session()
        }
        .onDisappear() {
            servicio_camara.detener()
        }
    }
}
