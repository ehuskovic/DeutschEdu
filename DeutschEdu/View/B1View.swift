//
//  B1View.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 26/10/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct B1View: View {
    @ObservedObject private var B1LevelsViewModel: B1LevelViewModel = B1LevelViewModel()
    @State var show = false
    @State var correct = 0
    @State var wrong = 0
    @State var answered = 0
    
    var body: some View {
        ScrollView {
            Image("pinkpurple-question").resizable().frame(width: 400, height: 300)
            Text("In B1 level you entered more sirious german. You will learn clauses that are very important in german for communication with people. Another past is plusquamperfekt which is not used very often but still you need to know it. There is a great list of words made for B1 students that can help you with communication in the future. Of course there is a quiz as well. Enjoy!").foregroundColor(.gray).padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(B1LevelsViewModel.topics, id: \.self) { B1level in
                        NavigationLink(destination: {
                            VStack{
                                if B1level.topic.contains("Nebensätze") {
                                    NebensatzeView()
                                } else if B1level.topic.contains("Plusquamperfekt") {
                                    PlusquamperfektView()
                                } else if B1level.topic.contains("Vokabular B1") {
                                    VokabularViewB1()
                                }  else if B1level.topic.contains("B1 Quiz") {
                                    QuizB1View(correct: self.$correct, wrong: self.$wrong, answered: self.$answered)
                                        .onTapGesture(perform: {
                                            self.show.toggle()
                                        })
                                }
                            }
                        }()) {
                            HorizontalListView(color: "pinkPurple", level: B1level, textStyle: .body)
                        }
                    }
                    
                }
                
            }
        }.navigationBarTitle("B1 Level")
    }
}
