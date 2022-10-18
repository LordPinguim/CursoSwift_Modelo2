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
    
    var manager = managerQuiz()
    var vasco: Quiz!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serieB()
        
    }
    
    @IBAction func opcoes(_ sender: UIButton) {
        let index = Int(opcoes.firstIndex(of: sender) ?? 0)
        if manager.arbitroAnswer(index: index){
            serieB()
        }else{
            serieB()
        }
    }
    func serieB(){
        if manager.cont+1 < manager.quizes.count{
            vasco = manager.reloadQuiz()
            question.text = vasco.pergunta
            for i in 0...3{
                opcoes[i].setTitle(vasco.opcoes[i], for: .normal)
            }
        }else{
            performSegue(withIdentifier: "segueResult", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let RESULT = segue.destination as! resultViewController
        RESULT.numberCorrect = manager.numberCorrect
        RESULT.numberWrong = manager.numberWrong
    }
    
    
    
    
}
