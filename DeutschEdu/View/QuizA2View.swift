//
//  QuizView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 12/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct QuizA2View: View {
    @Binding var correct: Int
    @Binding var wrong: Int
    @Binding var answered: Int
    @ObservedObject var data = QuestionViewModel()
    @Environment(\.presentationMode) var present
    var body: some View {
        
        ZStack{
            if data.questions.isEmpty{
                Text("Loading...")
            } else {
                
                if answered == data.questions.count {
                    VStack(spacing: 25){
                        Image("trophy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 250)
                        
                        Text("Well done!!")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        HStack(spacing: 15){
                            Image(systemName: "checkmark")
                                .font(.largeTitle)
                                .foregroundColor(.green)
                            Text("\(correct)")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            Image(systemName: "xmark")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                                .padding(.leading)
                            Text("\(wrong)")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        Button(action: {
                            self.present.wrappedValue.dismiss()
                        }, label: {
                            Text("Back to Home")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 150)
                                .background(Color.blue)
                            .cornerRadius(15)
                        })
                    }
                } else {
                    VStack{
                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center),
                               content: {
                                
                                Capsule()
                                    .fill(Color.gray.opacity(0.5))
                                    .frame(height: 6)
                                
                                Capsule()
                                    .fill(Color.green)
                                    .frame(width: progress(), height: 6)
                        }).padding()
                        
                        HStack{
                            
                            Text(correct == 0 ? "" : "\(correct)")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            Image(systemName: "checkmark")
                                .font(.largeTitle)
                                .foregroundColor(.green)
                            
                            Spacer()
                            
                            Text(wrong == 0 ? "" : "\(wrong)")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            Image(systemName: "xmark")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                            
                        }.padding()
                        
                        ZStack{
                            ForEach(data.questions.reversed().indices){ index in
                                QuestionView(question: self.$data.questions[index], correct: self.$correct, wrong: self.$wrong, answered: self.$answered)
                                    .offset(x: self.data.questions[index].completed ? 1000 : 0)
                                    .rotationEffect(.init(degrees: self.data.questions[index].completed ? 10 : 0))
                            }
                        }
                    }
                }
                
            }
        }
        .onAppear(perform: {
            self.data.getQuestionsA2()
        })
            }
    func progress()-> CGFloat {
        let fraction = CGFloat(answered) / CGFloat(data.questions.count)
        let width = UIScreen.main.bounds.width - 30
        return fraction * width
    }
}


