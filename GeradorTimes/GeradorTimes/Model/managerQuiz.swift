import Foundation

class managerGT {
    var GeradorTime: [GenTime] = []

    func addNewClient(nome: String){
        GeradorTime.append(GenTime(nomeGT: nome.self))
    }
    
    func removerClient(inde: Int){
        GeradorTime.remove(at: inde)
    }
    
    func quantidadeClient() -> Int {
        return GeradorTime.count
    }
    
    func ListaCLientes(index: Int) -> GenTime{
        return GeradorTime[index]
    }
}
