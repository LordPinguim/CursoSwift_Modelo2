//
//  MainViewController.swift
//  chooseStudent
//
//  Created by ICMMAC05-7528 on 27/09/22.
//

import UIKit

class MainViewController: UIViewController {

    var manager = managerStudent()
    let MAIN_VIEW = UIStoryboard(name: "Main", bundle: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btShowAddStudent(_ sender: Any) {
        let ADD_STUDENT: AddStudentViewController = MAIN_VIEW.instantiateViewController(withIdentifier: "AddStudent") as! AddStudentViewController
        ADD_STUDENT.manager = manager
        self.present(ADD_STUDENT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueAddStundent", sender: nil)
        
    }
    
    @IBAction func btShowListStudent(_ sender: Any) {
        
    }
    @IBAction func returnMainView(segue:UIStoryboardSegue){
        
    }
}
