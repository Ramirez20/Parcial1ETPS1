//
//  Superheroe.swift
//  Nombre: Hugo Mauicio Polanco Ramirez
//  Carnet: 25-01452019
//  Carrera: Ingenieria en Sistemas y computacion
//  Created by development on 9/24/23.
//
//

import Cocoa

class Superheroe: NSObject {


class Parcial {
    var saldoDeCuenta: Double
    var nombreDelTitular: String
    var numeroDeCuenta: Int64
    
    init(nombreDelTitular: String, saldoDeCuenta: Double) {
        self.nombreDelTitular = nombreDelTitular
        self.saldoDeCuenta = saldoDeCuenta
        self.numeroDeCuenta = Int64.random(in: 1000000000...9999999999)
    }
    
    func setIngreso(monto: Double) {
        saldoDeCuenta += monto
    }
    
    func setReintegro(monto: Double) {
        if monto <= saldoDeCuenta {
            saldoDeCuenta -= monto
        } else {
            print("Saldo insuficiente para realizar el reintegro.")
        }
    }
    
    func getSaldoCuenta() -> Double {
        return saldoDeCuenta
    }
    
    func getDatosCuenta() -> String {
        return """
        Nombre del Titular: \(nombreDelTitular)
        Número de Cuenta: \(numeroDeCuenta)
        Saldo de la Cuenta: \(saldoDeCuenta)
        """
    }
    
    func realizarTransferenciaEntreCuentas(otraCuenta: Parcial, monto: Double) {
        if monto <= saldoDeCuenta {
            setReintegro(monto: monto)
            otraCuenta.setIngreso(monto: monto)
            print("Transferencia exitosa.")
        } else {
            print("Saldo insuficiente para realizar la transferencia.")
        }
    }
}

class OperacionesBanco {
    func realizarOperaciones() {
        
        let Parcial_1 = Parcial(nombreDelTitular: "Titular_1", saldoDeCuenta: 1000.0)
        let Parcial_2 = Parcial(nombreDelTitular: "Titular_2", saldoDeCuenta: 2000.0)
        
        Parcial_1.realizarTransferenciaEntreCuentas(otraCuenta: Parcial_2, monto: 500.0)
        
        print("Datos de Parcial_1:")
        print(Parcial_1.getDatosCuenta())
        
        print("\nDatos de Parcial_2:")
        print(Parcial_2.getDatosCuenta())
    }
}
    
}

let operacionesBanco = OperacionesBanco()
operacionesBanco.realizarOperaciones()
