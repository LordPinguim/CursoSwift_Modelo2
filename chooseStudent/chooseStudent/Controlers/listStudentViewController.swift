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
    //Colocar Index para referenciar que vc está mexendo nisso
    @IBOutlet weak var btIndexNext: UIButton!
    @IBOutlet weak var btIndexBack: UIButton!
    
    var index = 0
    
    var manager = managerStudents()
    var classroom: Student!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btIndexNext.isHidden = true
        btIndexBack.isHidden = true
        
        if manager.escola.count > 0 {
            listnome.text = manager.escola[0].nomeS
            listserie.text = manager.escola[0].serieS
            listnota.text = manager.escola[0].notaS
            btIndexNext.isHidden = true
        }
    }
    
    @IBAction func btShowIndexNext(_ sender: Any) {
        index = index + 1
        classroom = mana
        
        if index > 1 {
            btIndexNext.isHidden = false
        }
    }
    @IBAction func btShowIndexBack(_ sender: Any) {
        index -= 1
        
        btIndexBack.isHidden = false
        if index < 1 {
            btIndexNext.isHidden = true
        }
    }
    
}
