//
//  VocabularyRowView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 09/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct VocabularyRowView: View {
    @State var vokabular: Vokabular
    let color: String
    var body: some View {
        HStack{
            Image(vokabular.imageName).resizable()
                .frame(width: 100, height: 100)
                .padding()
            Text(vokabular.wordDe).font(.body).foregroundColor(.white)
        }.background(
            Rectangle()
                .foregroundColor(Color(UIColor(named: color) ?? .blue))
                .frame(width: 600, height: 120)
        )
    }
}


