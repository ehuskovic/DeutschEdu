//
//  DetailVocabularyView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 08/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct DetailVocabularyView: View {
    let vokal: Vokabular
    let color: String
    
    var body: some View {
        VStack{
            Image(vokal.imageName)
                .resizable()
                .frame(width:200, height: 200)
            Text(vokal.wordEng).foregroundColor(.gray).font(.caption)
            Text(vokal.wordDe).font(.headline).foregroundColor(Color(UIColor(named: color) ?? .blue))
            Text(vokal.sentanceExample).font(.body).foregroundColor(.gray)
        }.padding(20)
            .padding(.top, 30)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(UIColor(named: "beige") ?? .gray))
                .frame(width: 380, height: 320)
            .shadow(color: Color.gray, radius: 5, x: 0, y: 7)
        )
    }
}

struct DetailVocabularyView_Previews: PreviewProvider {
    static var previews: some View {
        DetailVocabularyView(vokal: Vokabular(imageName: "rock", wordDe: "der Rock", wordEng: "skirt", sentanceExample: "Der Rock ist rot."), color: "purple")
    }
}
