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
            List(){
                RoundedRectangle(cornerRadius: 29.09)
                    .frame(width: 320, height: 130)
                    .foregroundStyle(Color(cgColor: CGColor(red: 0.170677, green: 0.350403, blue: 0.225609, alpha: 1)))
                    .opacity(0.77)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                RoundedRectangle(cornerRadius: 29.09)
                    .frame(width: 320, height: 130)
                    .foregroundStyle(Color(.black))
                    .opacity(0.77)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }.navigationBarItems(trailing: Button(action: {
                
            }){
                Image(systemName: "plus.rectangle.on.folder.fill")
                    .resizable()
                    .padding(4)
                    .frame(width: 50, height: 40)

                    .foregroundColor(.black)
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
