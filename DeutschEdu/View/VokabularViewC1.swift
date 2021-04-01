//
//  VokabularViewC1.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 05/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct VokabularViewC1: View {
    @ObservedObject private var viewModel: VocabularyViewModel = VocabularyViewModel()
    @State var defaultVokal = Vokabular(imageName: "nodata", wordDe: "", wordEng: "", sentanceExample: "Please select a word to learn.")
    @State var selectedVokal: Vokabular?

    var body: some View {
        VStack{
            if(selectedVokal != nil){
                       DetailVocabularyView(vokal: selectedVokal ?? defaultVokal, color: "bluePurple")
                   } else {
                DetailVocabularyView(vokal: defaultVokal, color: "bluePurple")
                   }
                   List{
                    ForEach(viewModel.words, id: \.self) { vokabular in
                        VocabularyRowView(vokabular: vokabular, color: "bluePurple").onTapGesture {
                               self.selectedVokal = vokabular
                           }
                       }
                   }.onAppear(){
                       self.viewModel.fetchDataC1()
                   }
            .onAppear(perform: {
                UITableView.appearance().separatorStyle = .none
            })
        }.padding()
    }
}

struct VokabularViewC1_Previews: PreviewProvider {
    static var previews: some View {
        VokabularViewC1()
    }
}
