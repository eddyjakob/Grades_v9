//
//  ContentView.swift
//  Grades_v4
//
//  Created by Jakob Erlebach on 29.02.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                Divider()
                Fachkachel(color: .blue)
                Fachkachel(color: .yellow)
                
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
