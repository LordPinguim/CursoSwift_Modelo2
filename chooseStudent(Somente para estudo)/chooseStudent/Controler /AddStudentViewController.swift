//
//  AddStudentViewController.swift
//  chooseStudent
//
//  Created by ICMMAC05-7528 on 27/09/22.
//

import UIKit

class AddStudentViewController: UIViewController {

    var manager = managerStudent()
    
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfSerie: UITextField!
    @IBOutlet weak var tfNota: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btAddNewStudent(_ sender: Any) {
        manager.addNewSrudent(msnome: tfNome.text!, msserie: tfSerie.text!, msnota: tfNota.text!)
        tfNome.text = ""
        tfSerie.text = ""
        tfNota.text = ""
    }
    
}
