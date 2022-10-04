//
//  listStudentViewController.swift
//  chooseStudent
//
//  Created by CLAUDIA MALHEIROS on 10/4/22.
//

import UIKit

class listStudentViewController: UIViewController {
    
    @IBOutlet weak var listnome: UILabel!
    @IBOutlet weak var listserie: UILabel!
    @IBOutlet weak var listnota: UILabel!
    //btNext, btBack = Button
    @IBOutlet weak var btnext: UIButton!
    @IBOutlet weak var btback: UIButton!
    
    var cont = 0
    
    var manager = managerStudents()
    var classroom: Student!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btback.isHidden = true
        btnext.isHidden = true
        
        if manager.escola.count > 0 {
            listnome.text = manager.escola[0].nomeS
            listserie.text = manager.escola[0].serieS
            listnota.text = manager.escola[0].notaS
        
        }
        if manager.escola.count == 1 {
            btnext.isHidden = false
        }
    }
    
    @IBAction func btNext(_ sender: Any) {
        cont = cont + 1
        classroom = manager.listStudent(index: cont)
        listnome.text = classroom.nomeS
        listserie.text = classroom.serieS
        listnota.text = classroom.notaS
        
        if cont + 1 == manager.escola.count{
            btnext.isHidden = false
        }
    }
    @IBAction func btBack(_ sender: Any) {
    }
    
}
