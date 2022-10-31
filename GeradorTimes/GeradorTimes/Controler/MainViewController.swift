//
//  MainViewController.swift
//  GeradorTimes
//
//  Created by ICMMAC05-7528 on 31/10/22.
//

import UIKit

class MainViewController: UIViewController {

    var ManagerGT = managerGT()
        let MAIN = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showViewList(_ sender: Any) {
            let LIST: ListViewController = MAIN.instantiateViewController(withIdentifier: "List") as! ListViewController
        LIST.ManagerGT = ManagerGT
            self.present(LIST, animated: true, completion: nil)
            performSegue(withIdentifier: "segueList", sender: nil)
        }
        
        @IBAction func showViewGerador(_ sender: Any) {
            let GERADOR: GeradorViewController = MAIN.instantiateViewController(withIdentifier: "Gerador") as! GeradorViewController
            GERADOR.ManagerGT = ManagerGT
            self.present(GERADOR, animated: true, completion: nil)
            performSegue(withIdentifier: "segueGerador", sender: nil)
        }
        @IBAction func returnMainView(segue: UIStoryboardSegue){
        }
    }
