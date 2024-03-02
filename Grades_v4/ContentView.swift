//
//  ContentView.swift
//  Grades_v4
//
//  Created by Jakob Erlebach on 29.02.24.
//

import SwiftUI

struct ContentView: View {
    
    var fächer: [Fachkachel] = [Fachkachel(color: .blue, fach: "Mathe"), Fachkachel(color: .red, fach: "Englisch")]
    @ObservedObject var storage: storageclass
    var body: some View {
        NavigationView{
            ScrollView{
                Divider()
                ForEach(fächer, id: \.self) { fach in
                    Button(action: {
                        storage.activeview = .fach
                    }, label: {
                        fach
                    })
                    
                
            }
                
            }.navigationBarItems(trailing: Button(action: {
                
            }){
                Image(systemName: "plus.rectangle.on.folder.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(4)
                    .frame(width: 45, height: 35)

                    .foregroundColor(.blue)
            } )
            .navigationTitle("Grades").frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}
/*
struct ContentView_Previews: PreviewProvider {
    
    @StateObject var storage: storageclass = storageclass()
    
    static var previews: some View {
        ContentView(storage: storage)
    }
}
*/
