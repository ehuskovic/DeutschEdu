//
//  PlusquamperfektView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 25/11/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct PlusquamperfektView: View {
    @ObservedObject private var verbViewModel: VerbsViewModel = VerbsViewModel()

    var body: some View {
        ScrollView {
            Group{
                DescriptionView(verbInfo: verbViewModel.plusPerfektVerbs, level: "Intermediate German")
                
                HeaderCaptionStyleView(textOne: verbViewModel.plusPerfektVerbs.weakVerb, textTwo: verbViewModel.plusPerfektVerbs.weakVerbCaption)

                ForEach(verbViewModel.plusperfektLesen, id: \.self) { verb in
                    VerbsThreeDetailedView(verb: verb)
                }
            }
            
            HeaderCaptionStyleView(textOne: verbViewModel.plusPerfektVerbs.strongVerb, textTwo: verbViewModel.plusPerfektVerbs.strongVerbCaption)
            
            ForEach(verbViewModel.plusperfektGehen, id: \.self) { verb in
                VerbsThreeDetailedView(verb: verb)
            }
        }
    }
}
