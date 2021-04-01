//
//  LevelView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 11/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct LevelView: View {
    @State var level: Level
    
    var body: some View {
        VStack{
            Image("a1-question").resizable().frame(width: 100, height: 100)
            Text(level.levelText).font(.largeTitle).foregroundColor(.orange)
            Text("In this level you will learn grammar topic called verbs. Verbs are very important part in german language. Here you will learn rules for konjugation of weak verbs and strong verbs. Another topic is section where you can learn words connected to food and elements in home. Last topic are number from 0 to 100.")
        }
    }
}
