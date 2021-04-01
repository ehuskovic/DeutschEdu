//
//  QuestionView.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 12/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import SwiftUI

struct QuestionView: View {
    @Binding var question: Question
    @Binding var correct: Int
    @Binding var wrong: Int
    @Binding var answered: Int
    @State var selected = ""
    var body: some View {
        VStack(spacing: 22){
            Text(question.question ?? "hey")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 25)
            
            Spacer()
            
            Button(action: {self.selected = self.question.a ?? "a"}, label: {
                Text(question.a ?? "a")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(color(option: question.a ?? "a"), lineWidth: 1)
                )
            })
            
            Button(action: {self.selected = self.question.b ?? "b"}, label: {
                Text(question.b ?? "b")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(color(option: question.b ?? "b"), lineWidth: 1)
                )
            })
            
            Button(action: {self.selected = self.question.c ?? "c"}, label: {
                Text(question.c ?? "c")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(color(option: question.c ?? "c"), lineWidth: 1)
                )
            })
            
            Spacer()
            
            HStack(spacing: 15){
                Button(action: {self.checkAnswer()}, label: {
                    Text("Submit")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                }).disabled(question.isSubmitted ? true : false)
                    .opacity(question.isSubmitted ? 0.7 : 1)
                
                Button(action: {
                    withAnimation{self.question.completed.toggle()
                        self.answered += 1
                    }
                    
                }, label: {
                    Text("Next")
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                }).disabled(!question.isSubmitted ? true : false)
                    .opacity(!question.isSubmitted ? 0.7 : 1)
            }.padding()
        }.padding()
            .background(Color.white)
            .cornerRadius(25)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
        
    }
    
    func color (option: String) -> Color {
        if option == selected{
            if question.isSubmitted{
                if selected == question.answer ?? "answer"{
                    return Color.green
                } else {
                    return Color.red
                }
            } else {
                return Color.blue
            }
        }
        else {
            
            if question.isSubmitted && option != selected{
                if question.answer ?? "answer" == option{return Color.green}
            }
            return Color.gray
        }
    }
    
    func checkAnswer(){
        if selected == question.answer ?? "answer"{
            correct += 1
        } else {
            wrong += 1
        }
        
        question.isSubmitted.toggle()
    }
}


