//
//  managerQuiz.swift
//  MiniQuiz
//
//  Created by ICMMAC08-5617 on 11/10/22.
import Foundation

class managerQuiz{
    //Aqui eu coloco as perguntas
    var managerQMinhasperguntas: [Quiz] = [
        /*Quiz(pergunta: "", opçoes: ["A = 0", "B = 1", "C = 2", "D = 3"], respostacorreta: 0)]
         "pergunta:" onde eu coloco a pergunta
         "opções:" eu coloco as perguntas na ordem informada, lembrando que o meu index começa a partir do meu elemento 0 = A
         "respostacorreta:" aqui eu indico minha variavel correta, ou seja ele só irá vencer se colocar ela como verdadeira... É a opção correta
         -> Estatistica para cada materia
         -> Mudar Background de cada materia
         -> --
     ----->0-10 de math(Azul), 10-20 hist(Amarelo), 20-30 geo(Laranja), 30-40 bio(Verde), 40-50 quim(Verde escuro), 50-60 fisic(Vermelho-bordo), 60-70 art(Roxo)
         */
        
        //Primeira pergunta para descontrair
        Quiz(pergunta: "Desafio 0: Quanto é 1 + 1?", opçoes: ["11", "2", "100", "101"], respostacorreta: 1),
        //Math
        Quiz(pergunta: "Desafio 1: Um automóvel comporta dois passageiros no banco da frente e três no banco de trás. Calcule o número de alternativas distintas para lotar o automóvel utilizando 7 pessoas, de modo que uma dessas pessoas nunca ocupe um lugar nos bancos da frente.", opçoes: ["100", "720", "1800", "1000"], respostacorreta: 2),
        Quiz(pergunta: "Desafio 2: Quanto dinheiro? Um homem gastou tudo o que tinha no bolso em três lojas. Em cada uma gastou 1 real a mais do que a metade do que tinha ao entrar. Quanto o homem tinha ao entrar na primeia loja?", opçoes: ["R$19,00", "R$14,00", "R$12,00", "R$20,00"], respostacorreta: 1),
        Quiz(pergunta: "Desafio 3: Determine o menor número natural cuja: divisão por 2 tem resto 1; divisão por 3 tem resto 2; divisão por 4 tem resto 3; divisão por 5 tem resto 4; divisão por 6 tem resto 5; divisão por 7 tem resto 0.", opçoes: ["100", "30", "120", "119"], respostacorreta: 3),
        Quiz(pergunta: "Desafio 4: Deseja-se descobrir quantos degraus são visíveis numa escada rolante. Para isso foi feito o seguinte: duas pessoas começaram a subir a escada juntas, uma subindo um degrau de cada vez enquanto que a outra subia dois. Ao chegar ao topo, o primeiro contou 21 degraus enquanto o outro 28. Com esses dados foi possível responder a questão. Quantos degraus são visíveis nessa escada rolante? (obs: a escada está andando).", opçoes: ["32", "42", "62", "52"], respostacorreta: 1),
        Quiz(pergunta: "Desafio 5: eu tenho o dobro da idade que tu tinha quando eu tinha a tua idade. Quando tu tiveres a minha idade, a soma das nossas idadess será de 45 anos. Quais são as nossas idades atuais?", opçoes: ["20 anos e 15 anos", "9 anos e 18 anos", "20 anos e 25 anos", "30 anos e 15 anos"], respostacorreta: 0),
        Quiz(pergunta: "Desafio 6: Você tem uma balança de 2 pratos e 12 tomates, sendo que: 11 tem o mesmo peso e 1 tem peso diferente. Com apenas três pesagens, descubra qual é o tomate diferente e se ele é mais leve ou mais pesado.", opçoes: ["9,10,11,12", "5,6,7,8", "1,2,3,4", "1,9,10,11"], respostacorreta: 0),
        Quiz(pergunta: "Desafio 7: Um viajante precisava pagar sua estadia de uma semana (7 dias) em um hotel, sendo que só possuía uma barra de ouro para pagar. O dono do hotel fez um desafio ao viajante para que ele aceitasse o pagamento em ouro. A proposta foi a seguinte: Aceito o pagamento em ouro. Porém, você terá que pagar uma diária de cada vez, e só poderá cortar a barra duas vezes. Como o viajante deverá cortar a barra para fazer o pagamento?", opçoes: ["1/2", "1/7", "2/7", "7/1"], respostacorreta: 1),
        Quiz(pergunta: "Desafio 8: Você tem dois dados normais com seis lados cada um, numerados de 1 a 6. Ao lançá-los, o total foi 5. Você será o vencedor se fizer outro 5 antes de fazer um 7, caso contrário você perde. Se for qualquer outra combinação antes de um 5 ou um 7, você lançará os dados novamente. Quais são suas chances de vencer?", opçoes: ["2 em 20", "5 em 9", "9 em 5", "2 em 45"], respostacorreta: 3),
        Quiz(pergunta: "Desafio 9: Sendo n um número natural, quando que n4+4 é primo?", opçoes: ["3", "9", "1", "10"], respostacorreta: 2),
        //Hist
        Quiz(pergunta: "Desafio 10: Qual é a cor do cavalo branco de Napoleão?", opçoes: ["Branco", "Cinza", "Preto", "Marrom"], respostacorreta: 1),
        Quiz(pergunta: "Desafio 11: A Era Vargas é a fase da história brasileira em que Getúlio Vargas governou o país. Foi forçado a renunciar à presidência após um ultimato dos militares. Quantos anos getúlio vargas ficou no poder?", opçoes: ["4", "10", "12", "15"], respostacorreta: 3),
        Quiz(pergunta: "Desafio 12: As causas da Primeira Guerra Mundial são extremamente complexas e envolvem uma série de acontecimentos não resolvidos que se arrastavam desde o século XIX: rivalidades econômicas, tensões nacionalistas, alianças militares etc. Qual foi o estopim da Primeira Grande Guerra?", opçoes: ["Corrida Armamentista", "Assassinato de John K.", "Comunismo Russo", "Assassinato de Francisco F."], respostacorreta: 3),
        Quiz(pergunta: "Desafio 13: Durante as disputa da Primeira Grande Guerra, o mundo se viu dividido em grandes grupos, conhecidos por Tríplice Entente e Tríplice Aliança, sabendo disso quais eram os paises presentes na Tríplice Entente?", opçoes: ["Japão, EUA e Alemanha", "Itália, Otomano, Alemanha e Áustria-Hungria", "Rússia, Otomano, Alemanha e Áustria-Hungria", "Rússia, Grã-Bretanha e França"], respostacorreta: 3),
        Quiz(pergunta: "Desafio 14: Durante as disputa da Primeira Grande Guerra, o mundo se viu dividido em grandes grupos, conhecidos por Tríplice Entente e Tríplice Aliança, sabendo disso quais eram os paises presentes na Tríplice Aliança?", opçoes: ["Itália, Otomano, Alemanha e Áustria-Hungria", "Japão. EUA e França", "Rússia, Grã-Bretanha e França", "Grã-Bretanha, França e China"], respostacorreta: 0),
        Quiz(pergunta: "Desafio 15:As trincheiras eram corredores subterrâneos construídos para abrigar os soldados e separar os exércitos que lutavam entre si. Muitas vezes, a distância entre uma trincheira e outra era mínima. O espaço entre as trincheiras era conhecido como?", opçoes: ["Area de Fogo Cruzado", "Fogo Cruzado", "Terra de Ninguém", "Terra da Polvorá"], respostacorreta: 2),
        Quiz(pergunta: "Desafio 16: A Segunda Guerra Mundial foi um conflito de escala global e ficou marcado por evento como holocausto e o uso de bombas atômicas. Quando ocorreu este terrivel evento?", opçoes: ["1939 e 1945", "1920 e 1940", "1914 3 1918", "1908 e 1920"], respostacorreta: 0),
        Quiz(pergunta: "Desafio 17:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 18:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 19:", opçoes: ["", "", "", ""], respostacorreta: 0),
        //Geo
        Quiz(pergunta: "Desafio 20:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 21:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 22:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 23:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 24:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 25:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 26:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 27:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 28:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 29:", opçoes: ["", "", "", ""], respostacorreta: 0),
        //Bio
        Quiz(pergunta: "Desafio 30:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 31:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 32:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 33:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 34:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 35:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 36:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 37:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 38:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 39:", opçoes: ["", "", "", ""], respostacorreta: 0),
        //Quim
        Quiz(pergunta: "Desafio 40:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 41:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 42:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 43:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 44:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 45:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 46:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 47:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 48:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 49:", opçoes: ["", "", "", ""], respostacorreta: 0),
        //Fisic
        Quiz(pergunta: "Desafio 50:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 51:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 52:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 53:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 54:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 55:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 56:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 57:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 58:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 59:", opçoes: ["", "", "", ""], respostacorreta: 0),
        //Art
        Quiz(pergunta: "Desafio 60:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 61:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 62:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 63:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 64:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 65:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 66:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 67:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 68:", opçoes: ["", "", "", ""], respostacorreta: 0),
        Quiz(pergunta: "Desafio 69:", opçoes: ["", "", "", ""], respostacorreta: 0),
        //O FIM
        Quiz(pergunta: "O DESAFIO:", opçoes: ["", "", "", ""], respostacorreta: 0)
    ]
    
    var managerQCont = -1
    var numberCorret = 0
    var numberWrong = 0
    
    func managerQReloadQuiz() -> Quiz{
        managerQCont = managerQCont + 1
        return managerQMinhasperguntas[managerQCont]
    }
    func quizAnswer(index: Int)->Bool{
        if managerQMinhasperguntas[managerQCont].respostacorreta == index{
            numberCorret = numberCorret+1
            return true
        }else{
            numberWrong = numberWrong+1
            return false
        }
    }
}
