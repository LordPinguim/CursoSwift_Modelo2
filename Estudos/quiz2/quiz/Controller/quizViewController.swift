//
//  quizViewController.swift
//  quiz
//
//  Created by ICMMAC07-13C3 on 11/10/22.
//

import UIKit

class quizViewController: UIViewController {
    
    
    @IBOutlet var opcoes: [UIButton]!
    @IBOutlet weak var question: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func opcoes(_ sender: UIButton) {
        let index = Int(opcoes.firstIndex(of: sender) ?? 0)
        question.text = "\(index)"
    }
    
    

}
