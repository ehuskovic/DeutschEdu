//
//  VerbenView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 26/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct VerbenView: View {
    @ObservedObject private var verbViewModel: VerbsViewModel = VerbsViewModel()
    public var verben: VerbInfo
    
    var body: some View {
        ScrollView{
            DescriptionView(verbInfo: verbViewModel.aboutVerbs, level: "Beginning German")
            
            Text(self.verbViewModel.aboutVerbs.weakVerb).foregroundColor(.orange)
            Text(self.verbViewModel.aboutVerbs.weakVerbCaption).font(.body).padding().fixedSize(horizontal: false, vertical: true).foregroundColor(.gray)
            
            ForEach(verbViewModel.lernenVerbs, id: \.self) { verb in
                VerbsDetailView(verb: verb)
            }
            
            Text(self.verbViewModel.aboutVerbs.strongVerb).foregroundColor(.orange)
            Text(self.verbViewModel.aboutVerbs.strongVerbCaption).font(.body).padding().fixedSize(horizontal: false, vertical: true).foregroundColor(.gray)
            
            ForEach(verbViewModel.fahrenVerbs, id: \.self) { verb in
                VerbsDetailView(verb: verb)
            }
            
            Group{
                
                Text("SEIN").foregroundColor(.orange)
                ForEach(verbViewModel.verbSein, id: \.self) { verb in
                    VerbsDetailView(verb: verb)
                }
                
                Text("HABEN").foregroundColor(.orange)
                ForEach(verbViewModel.verbHaben, id: \.self) { verb in
                    VerbsDetailView(verb: verb)
                }
            }
            
            
        }
    }
}
