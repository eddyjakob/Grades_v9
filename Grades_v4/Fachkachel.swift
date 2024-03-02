//
//  Fachkachel.swift
//  Grades_v4
//
//  Created by Jakob Erlebach on 02.03.24.
//

import SwiftUI

struct Fachkachel: View {
    
    var color: Color
    var accentcolor: Color = .white
    var fach: String = "Mathe"
     
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 29.09)
                .foregroundStyle(color)
                .opacity(0.77)
                
            HStack{
                Text(fach)
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.top, 15)
                    .padding(.leading, 20)
                    .foregroundColor(accentcolor)
                
                Button(action: {
                                
                            }){
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(4)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(accentcolor)
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                            .padding(.top, 15)
                            .padding(.trailing, 15)
            }
                
        }
        .padding(.horizontal, 15)
        .frame(height: 130)
    }
}

struct Fachkachel_Previews: PreviewProvider {
    static var previews: some View {
        Fachkachel(color: .blue)
    }
}
