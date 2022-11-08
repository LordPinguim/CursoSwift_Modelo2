//
//  managerQuiz.swift
//  QuizImage
//
//  Created by ICMMAC07-13C3 on 08/11/22.
//

import Foundation

class managerQuiz{
    var quizes: [quiz] = [
        quiz(pergunta: "Quem é puddle?", option: ["pit", "pud", "rott"], respostaCorreta: 1),
        quiz(pergunta: "Quem é o sphynx?", option: ["siames", "persa", "sphynx"], respostaCorreta: 2),
        quiz(pergunta: "QUem é cacatua?", option: ["cacatua", "canario", "papagaio"], respostaCorreta: 0)]
    
    
    var index = 0
    func reloadQuiz() -> quiz{
        return quizes[index]
    }
    
    func isCorrectAnswer(correct: Int) -> String{
        if correct ==  quizes[index].respostaCorreta{
            return "Você Acertou"
        }else {
            return "Você é Burro"
        }
    }
}
