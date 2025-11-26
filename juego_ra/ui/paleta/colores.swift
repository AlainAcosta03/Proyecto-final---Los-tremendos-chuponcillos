//
//  colores.swift
//  juego_ra
//
//  Created by alumno on 11/14/25.
//


import SwiftUI

struct ColoresApp {
    static let azulClaro1 = Color(hex: "B4CCEF")
    static let azulClaro2 = Color(hex: "83A7DC")
    static let azulMedio = Color(hex: "5C86C4")
    static let azulFuerte = Color(hex: "3E6AAB")
    static let azulOscuro = Color(hex: "24539A")

    static let moradoClaro = Color(hex: "C1B8F1")
    static let moradoMedio = Color(hex: "9689DF")
    static let moradoIntenso = Color(hex: "7363CA")
    static let moradoFuerte = Color(hex: "5645B3")
    static let moradoOscuro = Color(hex: "3D2BA1")

    static let mentaClaro = Color(hex: "AEEEEE")
    static let mentaMedio = Color(hex: "7AD9C7")
    static let mentaIntenso = Color(hex: "51C1AB")
    static let mentaFuerte = Color(hex: "31A58F")
    static let mentaOscuro = Color(hex: "18957C")
    
    static let verdeIntenso = Color(hex: "06a147")
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        self.init(
            red: Double((rgb >> 16) & 0xFF) / 255,
            green: Double((rgb >> 8) & 0xFF) / 255,
            blue: Double(rgb & 0xFF) / 255
        )
    }
}
