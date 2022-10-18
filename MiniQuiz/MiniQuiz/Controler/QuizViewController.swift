//
//  QuizViewController.swift
//  MiniQuiz
//
//  Created by ICMMAC08-5617 on 11/10/22.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var question: UILabel!
    @IBOutlet var option: [UIButton]!
    
    var manager = managerQuiz()
    var quiz: Quiz!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upgrandeQuiz()
    }

    @IBAction func btOption(_ sender: UIButton) {
        let index = option.firstIndex(of: sender) ?? 0
        
    }
    func upgrandeQuiz(){
        if manager.managerQCont+1 < manager.managerQMinhasperguntas.count{
            quiz = manager.managerQReloadQuiz()
            question.text = quiz.pergunta
            for i in 0...3{
                option[i].setTitle(quiz.option[i], for: .normal)
            }
        }else{
            performSegue(withIdentifier: "segueResult", sender: nil)
        }
    }
    }
}
