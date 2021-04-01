//
//  VokabularView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 30/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct VokabularViewA1: View {
    @ObservedObject private var vokabularViewModels: VocabularyViewModel = VocabularyViewModel()
    @State var defaultVokal = Vokabular(imageName: "nodata", wordDe: "", wordEng: "", sentanceExample: "Please select a word to learn.")
    @State var selectedVokal: Vokabular?
    
    var body: some View {
        
        VStack{
            
            if(selectedVokal != nil){
                DetailVocabularyView(vokal: selectedVokal ?? defaultVokal, color: "pinkorange")
            } else {
                DetailVocabularyView(vokal: defaultVokal, color: "pinkorange")
            }
            List{
                ForEach(vokabularViewModels.words, id: \.self) { vokabular in
                    VocabularyRowView(vokabular: vokabular, color: "pinkorange")
                    .onTapGesture {
                        self.selectedVokal = vokabular
                    }
                }
            }.onAppear(){
                self.vokabularViewModels.fetchData()
            }
            .onAppear(perform: {
                UITableView.appearance().separatorStyle = .none
            })
        }.padding()
    }
}
