//
//  File.swift
//  Grades_v4
//
//  Created by Etienne Hüttl on 02.03.24.
//

import Foundation

class testspeicher: Hashable{
    static func == (lhs: testspeicher, rhs: testspeicher) -> Bool {
        return lhs.datum_geschrieben == rhs.datum_geschrieben && lhs.note == rhs.note && lhs.testart == rhs.testart
    }
    
    
    
    var datum_geschrieben: Int
    var note: Double
    var testart: testarten
    let id = UUID()
    
    func hash(into hasher: inout Hasher) {
            hasher.combine(id)
        }
    
    init(datum_geschrieben: Int, note: Double, testart: testarten) {
        self.datum_geschrieben = datum_geschrieben
        self.note = note
        self.testart = testart
    }
    
    
}
 
class storageclass: ObservableObject{
    @Published var activeview: viewcase = .schuljahr
}

 
enum testarten: Hashable{
    case hü, klassenarbeit, voctest, epo
}

func gettestartenString(testart: testarten) -> String{
    switch testart {
    case .hü:
        return "HÜ"
    case .klassenarbeit:
        return "Klassenarbeit"
    case .voctest:
        return "Vocabeltest"
    case .epo:
        return "Epochal"
    }
}

enum viewcase{
    case schuljahr, fach
}
