//
//  managerStudent.swift
//  chooseStudent
//
//  Created by ICMMAC05-7528 on 27/09/22.
//

import Foundation

class managerStudent{
    var msschool: [Student] = []
    
    func addNewSrudent(msnome: String, msserie: String, msnota: String){
        msschool.append(Student(nome: msnome, serie: msserie, nota: msnota))
        print(msschool)
        
    }
}
