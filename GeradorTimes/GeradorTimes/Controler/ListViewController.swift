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
    
    @IBOutlet weak var SecondView: UIView!
    
    //var manager: GenTime!
    var Time: GenTime!
    //var ManagerGT = managerGT()
    var manager = managerGT()
    var IndexClient = 0
    //touch.begain
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnext.isHidden = true
        btback.isHidden = true
        
        if manager.quantidadeClient() > 0 {
            reloadClient()
        }
        if manager.GeradorTime.count > 0 {
            ListNome.text = manager.GeradorTime[0].nomeGT
            btnext.isHidden = false
        }
    }
    @IBAction func btAddClient(_ sender: Any) {
        manager.addNewClient(nome: tfNome.text!)
        view.endEditing(true)
        tfNome.text = ""
        ListNome.text = manager.GeradorTime[IndexClient].nomeGT
        reloadClient()
        if IndexClient < 0 {
            btnext.isHidden = true
            
        }else if IndexClient == 0 {
            btback.isHidden = true
            
            }
    }
    //Coisas da SecondView
    @IBAction func btShowLista(_ sender: Any) {
        SecondView.isHidden = false
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        SecondView.isHidden = true
    }
    
    //Botões
    @IBAction func btNextShow(_ sender: Any) {
        IndexClient = IndexClient+1
        Time = manager.ListaCLientes(index: IndexClient)
        ListNome.text = Time.nomeGT
        btnext.isHidden = false
        
        if (IndexClient+1) == manager.GeradorTime.count{
            btnext.isHidden = true
        }
    }
    @IBAction func btBackShow(_ sender: Any) {
        IndexClient = IndexClient-1
        Time = manager.ListaCLientes(index: IndexClient)
        ListNome.text = Time.nomeGT
        btback.isHidden = false
        
        if IndexClient < 1 {
            btnext.isHidden = true
        }
    }
    
    @IBAction func btRemoverClient(_ sender: Any) {
        manager.removerClient(inde: IndexClient)
        print(index)
        print(manager.quantidadeClient())
        
        if IndexClient < manager.quantidadeClient(){
            reloadClient()
        }
    }
    
    func reloadClient(){
        Time = manager.ListaCLientes(index: IndexClient)
        ListNome.text = "\(Time.nomeGT)"
    }
    
}
