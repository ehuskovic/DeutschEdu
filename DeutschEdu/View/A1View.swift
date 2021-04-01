//
//  A1View.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 26/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct A1View: View {
    @ObservedObject private var A1LevelViewModel: A1LevelsViewModel = A1LevelsViewModel()
    @ObservedObject private var level: LevelsViewModel = LevelsViewModel()
    @State var verben: VerbInfo
    @State var vokabular: Vokabular
    @State var number: Number
    var textStyle: Font = .body
    @State var show = false
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0

    
    var body: some View {
        ScrollView {
            Image("a1-question").resizable().frame(width: 400, height: 300)
            Text("In this level you will learn grammar topic called verbs. Verbs are very important part in german language. Here you will learn rules for konjugation of weak verbs and strong verbs. Another topic is section where you can learn words connected to food and elements in home. Last topic are number from 0 to 100.").foregroundColor(.gray).padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(A1LevelViewModel.topics, id: \.self) { A1level in
                        VStack{
                            NavigationLink(destination: {
                                VStack{
                                    if A1level.topic.contains("Verben") {
                                        VerbenView(verben: self.verben)
                                    } else if A1level.topic.contains("Vokabular A1") {
                                        VokabularViewA1()
                                    } else if A1level.topic.contains("Nummer") {
                                        NummerView(number: self.number)
                                    }  else if A1level.topic.contains("A1 Quiz") {
                                        QuizView(correct: self.$correct, wrong: self.$wrong, answered: self.$answered)
                                            .onTapGesture(perform: {
                                            self.show.toggle()
                                        })
                                    }
                                }
                            }()) {
                                HorizontalListView(color: "pinkorange", level: A1level, textStyle: .body)
                            }
                        }
                    }
                }
            }
        }.navigationBarTitle("A1 Level")
    }
}


