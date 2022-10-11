//
//  ModelQuiz.swift
//  MiniQuiz
//
//  Created by ICMMAC08-5617 on 11/10/22.
//

import Foundation

struct Quiz{
    // String pois eu estou trabalhando com palavras
    var pergunta: String
    // [] -> isso é uma coleção, ou seja posso adicionar um grupo de var em vez de fazer varias
    var opçoes: [String]
    // Int para deixar aleatorio, por isso um Inteiro
    var respostacorreta: Int
}
