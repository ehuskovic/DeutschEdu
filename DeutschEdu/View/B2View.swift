//
//  B2View.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 26/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct B2View: View {
    @ObservedObject private var B2LevelsViewModel: B2LevelViewModel = B2LevelViewModel()
    @State var show = false
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0
    
    var body: some View {
        ScrollView {
            Image("purple-question").resizable().frame(width: 400, height: 300)
            Text("In this leel you will learn adjectives that are very important for describing thigs or people. You will have Partizip I and II as a grammar part which is essential for certificate in german and for Perfekt for example. Vocabulary is very interested and followed by simple sentaces. Good luck with the quiz!").foregroundColor(.gray).padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(B2LevelsViewModel.topics, id: \.self) { B2level in
                        NavigationLink(destination: {
                            VStack{
                                if B2level.topic.contains("Adjective") {
                                    AdjectiveView()
                                } else if B2level.topic.contains("Partizip") {
                                    PartizipView()
                                } else if B2level.topic.contains("Vokabular B2") {
                                    VokabularViewB2()
                                }  else if B2level.topic.contains("B2 Quiz") {
                                    QuizB2View(correct: self.$correct, wrong: self.$wrong, answered: self.$answered)
                                        .onTapGesture(perform: {
                                            self.show.toggle()
                                        })
                                }
                            }
                        }()) {
                            HorizontalListView(color: "purple", level: B2level, textStyle: .body)
                        }
                    }
                }
                
            }
        }.navigationBarTitle("B2 Level")
    }
}
