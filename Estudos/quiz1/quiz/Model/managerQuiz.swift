//
//  managerQuiz.swift
//  quiz
//
//  Created by ICMMAC07-13C3 on 11/10/22.
//

import Foundation

class managerQuiz {
    let quizes: [Quiz] = [
        Quiz(pergunta: "Que cor é laranja?", opcoes: ["Azul","Laranja", "Preto", "Branco"], correctAnswer: 1),
        Quiz(pergunta: "Que cor é Azul?", opcoes: ["Azul", "Laranja", "Preto", "Branco"], correctAnswer: 0),
        Quiz(pergunta: "Que cor é Branco?", opcoes: ["Azul", "Laranja", "Preto", "Branco"], correctAnswer: 3),
        Quiz(pergunta: "Que cor é Preto?", opcoes: ["Azul", "Laranja", "Preto", "Branco"], correctAnswer: 2),
        Quiz(pergunta: "Que animal é Elefante?", opcoes: ["Elefante", "Leopardo", "Girafa", "Macaco"], correctAnswer: 0),
        Quiz(pergunta: "Que animal é Macaco?", opcoes: ["Elefante", "Leopardo", "Girafa", "Macaco"], correctAnswer: 3),
        Quiz(pergunta: "Que animal é Leopardo?", opcoes: ["Elefante", "Leopardo", "Girafa", "Macaco"], correctAnswer: 1),
        Quiz(pergunta: "Que animal é Girafa?", opcoes: ["Elefante", "Leopardo", "Girafa", "Macaco"], correctAnswer: 2),
        Quiz(pergunta: "Como pedir socorro?", opcoes: ["Mamãããããããe", "S.O.S", "Socooooorrooooo", "Nenhuma das Anteriores"], correctAnswer: 0),
        Quiz(pergunta: "Como ganhar dinheiro?", opcoes: ["Casar com homem rico", "Ganhar na MegaSena", "Ser Político", "Herança"], correctAnswer: 2)]
    
    var cont = -1
    var numberCorrect = 0
    var numberWrong = 0
    
    func reloadQuiz()-> Quiz{
        cont=cont+1
        return quizes[cont]
    }
    func arbitroAnswer(index: Int)->Bool{
        if quizes[cont].correctAnswer == index{
            numberCorrect = numberCorrect + 1
            return true
        }else{
            numberWrong = numberWrong + 1
            return false
            
        }
        
        
        
        
        
    }
}
