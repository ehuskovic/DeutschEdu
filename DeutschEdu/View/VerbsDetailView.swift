//
//  VerbsDetailView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 09/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct VerbsDetailView: View {
    @State var verb: Verben
    var body: some View {
        HStack(alignment: .top) {
            Text(verb.pronoun).frame(minWidth: 0, maxWidth: .infinity).padding().foregroundColor(.gray)
            Group {
                Text(verb.base).foregroundColor(Color(UIColor(named: "greenColor") ?? .gray)) + Text(verb.sufix).foregroundColor(.orange)
            }.frame(minWidth: 0, maxWidth: .infinity).padding()
        }
    }
}

struct VerbsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VerbsDetailView(verb: Verben(pronoun: "ich", base: "mach", sufix: "e"))
    }
}
