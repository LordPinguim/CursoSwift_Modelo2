//
//  ListClientViewController.swift
//  Banco
//
//  Created by ICMMAC09-BF7F on 01/10/22.
//

import UIKit

class ListClientViewController: UIViewController {
    
    @IBOutlet weak var ListTfNome: UILabel!
    @IBOutlet weak var ListTfDebito: UILabel!
    @IBOutlet weak var ListTfCredito: UILabel!
    
    @IBOutlet weak var BtNext: UIButton!
    @IBOutlet weak var BtBack: UIButton!
    
    var managerClient = managerClientes()
    var local = 0
    var gerencia: Clientes!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BtBack.isHidden = true
        BtNext.isHidden = true
        
        if managerClient.bancoAnaClif.count > 0 {
            ListTfNome.text = managerClient.bancoAnaClif[0].nomeCliente
            ListTfDebito.text = managerClient.bancoAnaClif[0].debitoCliente
            ListTfCredito.text = managerClient.bancoAnaClif[0].creditoCliente
            BtNext.isHidden = false
        }
    }
    
    @IBAction func btNextShowClient(_ sender: Any) {
        local = local + 1
        gerencia = managerClient.ListaClientesBanco(index: local)
        ListTfNome.text = gerencia.nomeCliente
        ListTfDebito.text = gerencia.debitoCliente
        ListTfCredito.text = gerencia.creditoCliente
        BtBack.isHidden = false
        
        if (local + 1) == managerClient.bancoAnaClif.count{
            BtNext.isHidden = true
        }
    }
    
    @IBAction func btBackShowClient(_ sender: Any) {
        local = local - 1
        gerencia = managerClient.ListaClientesBanco(index: local)
        ListTfNome.text = gerencia.nomeCliente
        ListTfDebito.text = gerencia.debitoCliente
        ListTfCredito.text = gerencia.creditoCliente
        BtNext.isHidden = false
        
        if local < 1 {
            BtBack.isHidden = true
        }
    }
}
