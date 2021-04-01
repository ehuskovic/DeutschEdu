//
//  PartizipView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 30/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct PartizipView: View {
    @ObservedObject private var verbViewModel: VerbsViewModel = VerbsViewModel()

    var body: some View {
        ScrollView {
            Group{
                DescriptionView(verbInfo: verbViewModel.partizipVerbs, level: "Beggining Level")
                
                HeaderCaptionStyleView(textOne: verbViewModel.partizipVerbs.weakVerb, textTwo: verbViewModel.partizipVerbs.weakVerbCaption)
                
                ForEach(verbViewModel.partizipIVerbs, id: \.self) { verb in
                    VerbsDetailView(verb: verb)
                }
            }
            HeaderCaptionStyleView(textOne: verbViewModel.partizipVerbs.strongVerb, textTwo: verbViewModel.partizipVerbs.strongVerbCaption)
  
            ForEach(verbViewModel.partizipIIVerbs, id: \.self) { verb in
                VerbsDetailView(verb: verb)
            }
        }.navigationBarTitle("Partizip")
    }
}
