//
//  managerQuiz.swift
//  MiniQuiz
//
//  Created by ICMMAC08-5617 on 11/10/22.
//

import Foundation

class managerQuiz{
    var managerQMinhasperguntas: [Quiz] = [
        Quiz(pergunta: "Quem merece zero?", opçoes: ["Adriano", "Ícaro", "Matheus", "Antonio"], respostacorreta: 2),
        Quiz(pergunta: "Quem merece 10?", opçoes: ["Paola", "Pedro", "Ícaro", "Jully"], respostacorreta: 0),
        Quiz(pergunta: "Se Marcos vai comprar pão de segunda e sexta, quantos pães ele deu pra girafa?", opçoes: ["2", "37", "28", "11"], respostacorreta: 3),
        Quiz(pergunta: "1 + 1?", opçoes: ["4", "2", "5", "9"], respostacorreta: 2),
        Quiz(pergunta: "2 + 3?", opçoes: ["4", "20", "23", "5"], respostacorreta: 3),
        Quiz(pergunta: "6 + 24?", opçoes: ["624", "21", "30", "22"], respostacorreta: 2),
        Quiz(pergunta: "64 + (-20)?", opçoes: ["30", "84", "44", "404"], respostacorreta: 2),
        Quiz(pergunta: "100 + 50?", opçoes: ["150", "1150", "50", "510"], respostacorreta: 0),
        Quiz(pergunta: "1950 + 11?", opçoes: ["2005", "1961", "1939", "2077"], respostacorreta: 1),
        Quiz(pergunta: "2022 + 2021?", opçoes: ["1", "1", "4043", "1"], respostacorreta: 2),
        Quiz(pergunta: "79 + (-49)?", opçoes: ["120", "30", "75", "70"], respostacorreta: 1),]
    
    var managerQCont = -1
    func managerQReloadQuiz() -> Quiz{
        managerQCont = managerQCont + 1
        return managerQMinhasperguntas[managerQCont]
        
    }
}
