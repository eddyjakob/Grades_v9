//
//  File.swift
//  Grades_v4
//
//  Created by Etienne Hüttl on 02.03.24.
//

class testspeicher{
    var datum_geschrieben: Int
    var note: Double
    var testart: testarten
    
    init(datum_geschrieben: Int, note: Double, testart: testarten) {
        self.datum_geschrieben = datum_geschrieben
        self.note = note
        self.testart = testart
    }
    
    
}
 
 
enum testarten{
    case hü, klassenarbeit, voctest, epo
    
}
