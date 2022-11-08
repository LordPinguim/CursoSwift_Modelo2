//
//  quizViewController.swift
//  QuizImage
//
//  Created by ICMMAC07-13C3 on 08/11/22.
//

import UIKit

class quizViewController: UIViewController {

    @IBOutlet weak var lbQuestion: UILabel!
    
    var manager = managerQuiz()
    var Quiz:quiz!
    var correct = 0
    
    @IBOutlet var btOptions: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadQuiz()
    }
    
    
    @IBAction func btShowOptions(_ sender: UIButton) {
        correct = btOptions.firstIndex(of: sender) ?? 0
        performSegue(withIdentifier: "segueResult", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VIEW_RESULT =  segue.destination as! resultViewController
        VIEW_RESULT.resultado = manager.isCorrectAnswer(correct: correct)
    }
    
    func reloadQuiz(){
        Quiz = manager.reloadQuiz()
        print(Quiz.pergunta)
        print(Quiz.option)
        lbQuestion.text = "\(Quiz.pergunta)"
        for i in 0...2{
            btOptions[i].setBackgroundImage(UIImage(named: Quiz.option[i]), for: .normal)
        }
    }

}
