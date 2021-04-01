//
//  C1View.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 26/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct C1View: View {
    
    @ObservedObject private var C1LevelsViewModel: C1LevelViewModel = C1LevelViewModel()
    @State var show = false
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0
    
    var body: some View {
        ScrollView {
            Image("bluepurple-question").resizable().frame(width: 400, height: 300)
            Text("C1 level is the highest level in the application. It is very advanced that is why it was not possible to put it entirely into this app. C1 is not the last level in german. There is also a C2. C2 certificate is required by professors and doctors. In this part there is a vocabulary similar but much more simpler than in C1 real level. There is also simple C1 quiz.").foregroundColor(.gray).padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(C1LevelsViewModel.topics, id: \.self) { C1Level in
                        NavigationLink(destination: {
                            VStack{
                                if C1Level.topic.contains("Vokabular C1") {
                                    VokabularViewC1()
                                } else if C1Level.topic.contains("C1 Quiz") {
                                    QuizC1View(correct: self.$correct, wrong: self.$wrong, answered: self.$answered)
                                        .onTapGesture(perform: {
                                            self.show.toggle()
                                        })
                                }
                            }
                        }()) { // open ProjectsView only if the user clicked on the item "Projects" of the list etc..
                            HorizontalListView(color: "bluePurple", level: C1Level, textStyle: .body)
                        }
                    }
                }
            }
        }.navigationBarTitle("C1 Level")
    }
}
