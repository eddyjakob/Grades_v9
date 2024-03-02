//
//  FachView.swift
//  Grades_v4
//
//  Created by Jakob Erlebach on 04.03.24.
//

import SwiftUI

struct FachView: View {
    
    @ObservedObject var storage: storageclass
    
    var body: some View {
        NavigationView{
            Text("xx")
                .navigationBarItems(leading: Button(action: {
                    
                }){
                    Button(action: {
                        storage.activeview = .schuljahr
                    }, label: {
                        HStack{
                            Image(systemName: "chevron.backward")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                                .foregroundColor(.blue)
                            
                        Text("Zurück")
                        }
                    })
                    
                    
                } )
        }
    }
}
/*
struct FachView_Previews: PreviewProvider {
    static var previews: some View {
        FachView()
    }
}
*/
