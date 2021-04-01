//
//  VerbsThreeDetailedView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 09/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct VerbsThreeDetailedView: View {
    @State var verb: Verben

    var body: some View {
        HStack(alignment: .top) {
            Text(verb.pronoun).frame(minWidth: 0, maxWidth: .infinity).padding().foregroundColor(.gray)
            Group {
                Text(verb.base).foregroundColor(.orange)
                Text(verb.sufix).foregroundColor(Color(UIColor(named: "greenColor") ?? .green))
            }.frame(minWidth: 0, maxWidth: .infinity).padding()
        }
    }
}


