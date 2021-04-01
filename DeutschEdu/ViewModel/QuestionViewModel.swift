//
//  QuestionViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 12/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation
import FirebaseFirestore


class QuestionViewModel: ObservableObject {
    @Published var questions : [Question] = []
    
    func getQuestions(){
        let db = Firestore.firestore()
        
        db.collection("Round_1").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No data to show")
                return
            }
            
            self.questions = documents.map {(queryDocumentSnapshot) -> Question in
                let data = queryDocumentSnapshot.data()
                
                let question = data["question"] as? String ?? ""
                let a = data["a"] as? String ?? ""
                let b = data["b"] as? String ?? ""
                let c = data["c"] as? String ?? ""
                let answer = data["answer"] as? String ?? ""

                return Question(question: question, a: a, b: b, c: c, answer: answer, isSubmitted: false, completed: false)
   
            }
        }
    }
    
    func getQuestionsA2(){
         let db = Firestore.firestore()
         
         db.collection("Round_2").addSnapshotListener{ (querySnapshot, error) in
             guard let documents = querySnapshot?.documents else {
                 print("No data to show")
                 return
             }
             
             self.questions = documents.map {(queryDocumentSnapshot) -> Question in
                 let data = queryDocumentSnapshot.data()
                 
                 let question = data["question"] as? String ?? ""
                 let a = data["a"] as? String ?? ""
                 let b = data["b"] as? String ?? ""
                 let c = data["c"] as? String ?? ""
                 let answer = data["answer"] as? String ?? ""

                 return Question(question: question, a: a, b: b, c: c, answer: answer, isSubmitted: false, completed: false)
    
             }
         }
     }
    
    func getQuestionsB1(){
         let db = Firestore.firestore()
         
         db.collection("Round_3").addSnapshotListener{ (querySnapshot, error) in
             guard let documents = querySnapshot?.documents else {
                 print("No data to show")
                 return
             }
             
             self.questions = documents.map {(queryDocumentSnapshot) -> Question in
                 let data = queryDocumentSnapshot.data()
                 
                 let question = data["question"] as? String ?? ""
                 let a = data["a"] as? String ?? ""
                 let b = data["b"] as? String ?? ""
                 let c = data["c"] as? String ?? ""
                 let answer = data["answer"] as? String ?? ""

                 return Question(question: question, a: a, b: b, c: c, answer: answer, isSubmitted: false, completed: false)
    
             }
         }
     }
    
    
    func getQuestionsB2(){
         let db = Firestore.firestore()
         
         db.collection("Round_4").addSnapshotListener{ (querySnapshot, error) in
             guard let documents = querySnapshot?.documents else {
                 print("No data to show")
                 return
             }
             
             self.questions = documents.map {(queryDocumentSnapshot) -> Question in
                 let data = queryDocumentSnapshot.data()
                 
                 let question = data["question"] as? String ?? ""
                 let a = data["a"] as? String ?? ""
                 let b = data["b"] as? String ?? ""
                 let c = data["c"] as? String ?? ""
                 let answer = data["answer"] as? String ?? ""

                 return Question(question: question, a: a, b: b, c: c, answer: answer, isSubmitted: false, completed: false)
    
             }
         }
     }
    
    func getQuestionsC1(){
         let db = Firestore.firestore()
         
         db.collection("Round_5").addSnapshotListener{ (querySnapshot, error) in
             guard let documents = querySnapshot?.documents else {
                 print("No data to show")
                 return
             }
             
             self.questions = documents.map {(queryDocumentSnapshot) -> Question in
                 let data = queryDocumentSnapshot.data()
                 
                 let question = data["question"] as? String ?? ""
                 let a = data["a"] as? String ?? ""
                 let b = data["b"] as? String ?? ""
                 let c = data["c"] as? String ?? ""
                 let answer = data["answer"] as? String ?? ""

                 return Question(question: question, a: a, b: b, c: c, answer: answer, isSubmitted: false, completed: false)
    
             }
         }
     }
}
