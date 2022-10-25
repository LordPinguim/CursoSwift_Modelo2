//
//  ResultViewController.swift
//  MiniQuiz
//
//  Created by ICMMAC08-5617 on 11/10/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAcerto: UILabel!
    @IBOutlet weak var lbErros: UILabel!
    @IBOutlet weak var pontuacao: UILabel!
    
    var numberCorrect = 0
    var numberWrong = 0
        var scoreCorrect = 0
        var scoreWrong = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(numberCorrect, numberWrong)
        lbAcerto.text = "\(numberCorrect)"
        lbErros.text = "\(numberWrong)"
        pontuacao.text = "\(scoreCorrect - scoreWrong)"
    }
    @IBAction func returnmainView(segue: UIStoryboardSegue){}
    
}
