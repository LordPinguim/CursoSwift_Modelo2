//
//  MainQuizViewController.swift
//  MiniQuiz
//
//  Created by ICMMAC08-5617 on 11/10/22.
//

import UIKit

class MainQuizViewController: UIViewController {
    
    var MainManager = managerQuiz()
    let MAIN = UIStoryboard(name: "mainQuiz", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btShowMath(_ sender: Any) {
        let MATH: QuizViewController = MAIN.instantiateViewController(withIdentifier:  "Quiz") as! QuizViewController
        MATH.manager.managerQCont = -1
        self.present(MATH, animated: true, completion: nil)
        performSegue(withIdentifier: "segueQuiz", sender: nil)
    }
    
    @IBAction func btShowPort(_ sender: Any) {
        
    }
    
    @IBAction func returnMainView(segue: UIStoryboardSegue){
    }

}
