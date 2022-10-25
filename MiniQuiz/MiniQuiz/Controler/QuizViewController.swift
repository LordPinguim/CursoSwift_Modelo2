//
//  QuizViewController.swift
//  MiniQuiz
//
//  Created by ICMMAC08-5617 on 11/10/22.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var question: UILabel!
    @IBOutlet var opcoes: [UIButton]!
    
    var manager = managerQuiz()
    var quizGame: Quiz!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upgrandeQuiz()
    }

    @IBAction func btOpcoes(_ sender: UIButton) {
        let index = Int(opcoes.firstIndex(of: sender) ?? 0)
        if manager.quizAnswer(index: index){
            upgrandeQuiz()
        }else{
            upgrandeQuiz()
        }
        
    }
    func upgrandeQuiz(){
        if manager.managerQCont+1 < manager.managerQMinhasperguntas.count{
            quizGame = manager.managerQReloadQuiz()
            question.text = quizGame.pergunta
            for i in 0...3{
                opcoes[i].setTitle(quizGame.opçoes[i], for: .normal)
            }
        }else{
            performSegue(withIdentifier: "segueResult", sender: nil)
        }
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let RESULT = segue.destination as! ResultViewController
        RESULT.numberCorrect = manager.numberCorret
        RESULT.numberWrong = manager.numberWrong
        RESULT.scoreCorrect = manager.numberCorret
        RESULT.numberWrong = manager.numberWrong
    }
}
