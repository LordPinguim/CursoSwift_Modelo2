import Foundation

class managerGT {
    var GeradorTime: [GenTime] = []

    func addNewClient(nome: String){
        GeradorTime.append(GenTime(nomeGT: nome))
        print(GeradorTime)
    }
}
