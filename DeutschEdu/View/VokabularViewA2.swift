//
//  VokabularViewA2.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 30/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct VokabularViewA2: View {
    @ObservedObject private var viewModel: VocabularyViewModel = VocabularyViewModel()
    @State var defaultVokal = Vokabular(imageName: "nodata", wordDe: "", wordEng: "", sentanceExample: "Please select a word to learn.")
    @State var selectedVokal: Vokabular?
    
    var body: some View {
        
        VStack{
            if(selectedVokal != nil){
                DetailVocabularyView(vokal: selectedVokal ?? defaultVokal, color: "darkerPink")
            } else {
                DetailVocabularyView(vokal: defaultVokal, color: "darkerPink")
            }
            List{
                ForEach(viewModel.words, id: \.self) { vokabular in
                    VocabularyRowView(vokabular: vokabular, color: "darkerPink")
                    .onTapGesture {
                        self.selectedVokal = vokabular
                    }
                }
            }.onAppear(){
                self.viewModel.fetchDataA2()
            }
            .onAppear(perform: {
                UITableView.appearance().separatorStyle = .none
            })
        }.padding()
    }
}
