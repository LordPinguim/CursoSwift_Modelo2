//
//  gerenciadorClient.swift
//  Banco
//
//  Created by LordPinguim.
//

import Foundation

class managerClientes {
var bancoAnaClif: [Clientes] = []

func addNovoCliente(nome: String, debito: String, credito: String){
    bancoAnaClif.append(Clientes(nomeCliente: nome, debitoCliente: debito, creditoCliente: debito))
    print(bancoAnaClif)
}
func ListaClientesBanco(index: Int) -> Clientes{
    return bancoAnaClif[index]
}
  }
