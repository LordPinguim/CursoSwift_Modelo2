//
//  ListViewController.swift
//  GeradorTimes
//
//  Created by ICMMAC05-7528 on 31/10/22.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tfNome: UITextField!
 
    @IBOutlet weak var ListNome: UILabel!
    @IBOutlet weak var btnext: UIButton!
    @IBOutlet weak var btback: UIButton!
    
    var ManagerGT = managerGT()
    var IndexClient = 0
    var manager: GenTime!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnext.isHidden = true
        btback.isHidden = true
        
        if ManagerGT.GeradorTime.count > 0 {
            ListNome.text = ManagerGT.GeradorTime[0].nomeGT
            btnext.isHidden = false
        }
    }
    
    @IBAction func btAddClient(_ sender: Any) {
        ManagerGT.addNewClient(nome: tfNome.text!)
        view.endEditing(true)
        
        ListNome.text = tfNome.text
        tfNome.text = ""
    }
    
    @IBAction func btNextShow(_ sender: Any) {
        IndexClient = IndexClient+1
        manager = ManagerGT.ListaCLientes(index: IndexClient)
        ListNome.text = manager.nomeGT
        btback.isHidden = false
        
        if (IndexClient+1) == ManagerGT.GeradorTime.count{
            btnext.isHidden = true
        }
    }
    
    @IBAction func btBackShow(_ sender: Any) {
        IndexClient = IndexClient-1
        manager = ManagerGT.ListaCLientes(index: IndexClient)
        ListNome.text = manager.nomeGT
        btnext.isHidden = false
        
        if IndexClient < 1 {
            btback.isHidden = true
        }
    }
    
}
