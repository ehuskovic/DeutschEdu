//
//  A2View.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 26/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

import SwiftUI

struct A2View: View {
    @ObservedObject private var A2LevelsViewModel: A2LevelViewModel = A2LevelViewModel()
    @State var verbInfo: VerbInfo
    @State var show = false
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0
    
    var body: some View {
        ScrollView {
            Image("darkerpink-question").resizable().frame(width: 400, height: 300)
            Text("In this level you will Prateritum which is very important part when writing past in german. It is past tense. You will learn modal verbs and perfekt as well. Perfekt is past when talking and prateritum when writing. There is also vocabulary common for this level and quiz where you can test your knowledge.").foregroundColor(.gray).padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(A2LevelsViewModel.topics, id: \.self) { A2level in
                        NavigationLink(destination: {
                            VStack{
                                if A2level.topic.contains("Präteritum") {
                                    PrateritumView(verbInfo: self.verbInfo)
                                } else if A2level.topic.contains("Modalverben") {
                                    ModalverbenView()
                                } else if A2level.topic.contains("Perfekt") {
                                    PerfektView()
                                } else if A2level.topic.contains("Vokabular A2") {
                                    VokabularViewA2()
                                } else if A2level.topic.contains("A2 Quiz") {
                                    QuizA2View(correct: self.$correct, wrong: self.$wrong, answered: self.$answered)
                                        .onTapGesture(perform: {
                                        self.show.toggle()
                                    })
                                }
                            }
                        }()) {
                            HorizontalListView(color: "darkerPink", level: A2level, textStyle: .body)
                        }
                    }
                }
            }
        }.navigationBarTitle("A2 Level").foregroundColor(Color(UIColor(named: "pinkorange") ?? .blue))
    }
}


