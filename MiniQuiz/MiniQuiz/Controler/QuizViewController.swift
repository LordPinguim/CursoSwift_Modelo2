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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btOption(_ sender: UIButton) {
        let index = option.firstIndex(of: sender) ?? 0
        question.text = "\(index)"
    }
}
