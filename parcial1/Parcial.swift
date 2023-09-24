//
//  Parcial.swift
//  Nombre: Hugo Mauicio Polanco Ramirez
//  Carnet: 25-01452019
//  Carrera: Ingenieria en Sistemas y computacion
//
//  Created by development on 9/24/23.
//
//

import Cocoa

class Parcial: NSObject {

class Superheroe {
    var nombre: String
    var descripcion: String
    var capa: Bool
    
    init(nombre: String) {
        self.nombre = nombre
        self.descripcion = ""
        self.capa = false
    }
    
    func getNombre() -> String {
        return self.nombre
    }
    
    func setNombre(nombre: String) {
        self.nombre = nombre
    }
    
    func getDescripcion() -> String {
        return self.descripcion
    }
    
    func setDescripcion(descripcion: String) {
        self.descripcion = descripcion
    }
    
    func getCapa() -> Bool {
        return self.capa
    }
    
    func setCapa(capa: Bool) {
        self.capa = capa
    }
    
    func aMostrar() -> String {
        return "Nombre: \(self.nombre)\nDescripción: \(self.descripcion)\nCapa: \(self.capa ? "Sí" : "No")"
    }
}

let superheroe1 = Superheroe(nombre: "Spider-Man")
superheroe1.setDescripcion(descripcion: "Hombre araña con traje rojo y azul")
superheroe1.setCapa(capa: true)
    

print(superheroe1.aMostrar())


