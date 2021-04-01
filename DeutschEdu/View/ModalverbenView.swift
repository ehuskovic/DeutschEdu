//
//  ModalverbenView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 27/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct ModalverbenView: View {
    @ObservedObject private var verbViewModel: VerbsViewModel = VerbsViewModel()
    
    var body: some View {
        
        ScrollView{
            Group{
                DescriptionView(verbInfo: verbViewModel.modalVerbs, level: "Beginning German")
                
                HeaderCaptionStyleView(textOne: verbViewModel.modalVerbs.weakVerb, textTwo: "")
                Text("müssen").foregroundColor(.orange)

                ForEach(verbViewModel.modalMussen, id: \.self) { verb in
                    VerbsDetailView(verb: verb)
                }
                
                Text(verbViewModel.modalVerbs.strongVerbCaption).foregroundColor(.orange)
                
                ForEach(verbViewModel.modalMochten, id: \.self) { verb in
                    VerbsDetailView(verb: verb)
                }
            }
            HeaderCaptionStyleView(textOne: verbViewModel.modalVerbs.strongVerb, textTwo: verbViewModel.modalVerbs.weakVerbCaption)
            ForEach(verbViewModel.modalMochtenPrat, id: \.self) { verb in
                VerbsDetailView(verb: verb)
            }
            Text(verbViewModel.modalVerbs.strongVerbCaption).foregroundColor(.orange)
            ForEach(verbViewModel.modalMochtenPrat, id: \.self) { verb in
                VerbsDetailView(verb: verb)
            }
        }
    }
}
