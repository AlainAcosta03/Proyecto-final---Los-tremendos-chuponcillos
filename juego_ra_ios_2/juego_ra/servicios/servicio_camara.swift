//
//  servicio_camara.swift
//  juego_ra
//
//  Created by alumno on 11/12/25.
//

import Foundation
import AVFoundation
import UIKit

@Observable
class ServicioCamara{
    private let capturar_session = AVCaptureSession()
    
    private var entrada_del_dispositivo: AVCaptureDeviceInput?
    private var salida_de_video: AVCaptureVideoDataOutput?
    private var previsualizacion: AVCaptureVideoPreviewLayer?
    
    private let tipo_camara_preferida = AVCaptureDevice.default(for: .video)
    
    private var lista_de_session = DispatchQueue(label: "session.video")
    
    func autorizacion_camara() async -> Bool{
        let estado_autorizacion = AVCaptureDevice.authorizationStatus(for: .video)
        
        if estado_autorizacion == .notDetermined{
            await AVCaptureDevice.requestAccess(for: .video)
        }
        
        return estado_autorizacion == .authorized
    }
    
    func iniciar_session(){
        guard let dispotivo = AVCaptureDevice.default(for: .video),
              let entrada = try? AVCaptureDeviceInput(device: dispotivo),
              capturar_session.canAddInput(entrada)
              //capturar_session.canAddOutput(<#T##output: AVCaptureOutput##AVCaptureOutput#>)
        else {
            return
        }
        
        capturar_session.beginConfiguration()
        capturar_session.addInput(entrada)
        capturar_session.commitConfiguration()
        capturar_session.startRunning()
    }
    
    func detener() {
        capturar_session.stopRunning()
        
        capturar_session.beginConfiguration()
        capturar_session.inputs.forEach { capturar_session.removeInput($0) }
        capturar_session.outputs.forEach { capturar_session.removeOutput($0) }
        
        capturar_session.commitConfiguration()
        
        previsualizacion = nil
    }
    
    func obtener_previsualizacion_camara() -> AVCaptureVideoPreviewLayer {
        if let capa = previsualizacion{
            return capa
        }
        let capa = AVCaptureVideoPreviewLayer(session: capturar_session)
        capa.videoGravity = .resizeAspectFill
        previsualizacion = capa
        return capa
    }
    
}
