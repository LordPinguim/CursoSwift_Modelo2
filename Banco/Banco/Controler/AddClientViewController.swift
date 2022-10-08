//
//  AddClientViewController.swift
//  Banco
//
//  Created by ICMMAC09-BF7F on 01/10/22.
//

import UIKit

class AddClientViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfDebito: UITextField!
    @IBOutlet weak var tfCredito: UITextField!
    
    var managerClient = managerClientes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addNewStudent(_ sender: Any) {
        managerClient.addNovoCliente(nome: tfNome.text!, debito: tfDebito.text!, credito: tfCredito.text!)
        view.endEditing(true)
        tfNome.text = ""
        tfDebito.text = ""
        tfCredito.text = ""
    }
}
