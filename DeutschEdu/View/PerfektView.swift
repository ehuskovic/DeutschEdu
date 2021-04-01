//
//  PerfektView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 27/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct PerfektView: View {
     @ObservedObject private var verbViewModel: VerbsViewModel = VerbsViewModel()
    var body: some View {
        ScrollView {
            Group{
                DescriptionView(verbInfo: verbViewModel.perfektVerbs, level: "Beginning German")
                
                HeaderCaptionStyleView(textOne: verbViewModel.perfektVerbs.weakVerb, textTwo: verbViewModel.perfektVerbs.weakVerbCaption)

                ForEach(verbViewModel.perfektGelesen, id: \.self) { verb in
                    VerbsThreeDetailedView(verb: verb)
                }
            }
            
            HeaderCaptionStyleView(textOne: verbViewModel.perfektVerbs.strongVerb, textTwo: verbViewModel.perfektVerbs.strongVerbCaption)
            
            ForEach(verbViewModel.perfektGegangen, id: \.self) { verb in
                VerbsThreeDetailedView(verb: verb)
            }
        }
    }
}
