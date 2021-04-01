//
//  PrateritumView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 26/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct PrateritumView: View {
    @ObservedObject private var verbViewModel: VerbsViewModel = VerbsViewModel()
    public var verbInfo: VerbInfo
    
    var body: some View {
        ScrollView{
            DescriptionView(verbInfo: verbViewModel.prateritumTense, level: "Beginning German")
            
            Text(self.verbViewModel.prateritumTense.weakVerb).foregroundColor(.orange)
            Text(self.verbViewModel.prateritumTense.weakVerbCaption).font(.body).padding().fixedSize(horizontal: false, vertical: true).foregroundColor(.gray)
            
            ForEach(verbViewModel.prateritumLernen, id: \.self) { verb in
                VerbsDetailView(verb: verb)
            }
            
            Text(self.verbViewModel.prateritumTense.strongVerb).foregroundColor(.orange)
            Text(self.verbViewModel.prateritumTense.strongVerbCaption).font(.body).padding().fixedSize(horizontal: false, vertical: true).foregroundColor(.gray)
            
            ForEach(verbViewModel.prateritumFahren, id: \.self) { verb in
                VerbsDetailView(verb: verb)
            }
            
            Group{
                Text("Präteritum SEIN").foregroundColor(.orange)
                ForEach(verbViewModel.prateritumSein, id: \.self) { verb in
                    VerbsDetailView(verb: verb)
                }
                
                Text("Präteritum HABEN").foregroundColor(.orange)
                ForEach(verbViewModel.prateritumHaben, id: \.self) { verb in
                    VerbsDetailView(verb: verb)
                }
            }
            
            
        }
    }
}
