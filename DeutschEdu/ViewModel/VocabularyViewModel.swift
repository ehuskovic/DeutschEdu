//
//  VocabularyViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 02/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation
import FirebaseFirestore

class VocabularyViewModel: ObservableObject {
    @Published var words = [Vokabular]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("vocabularyA1").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No data to show")
                return
            }
            
            self.words = documents.map {(queryDocumentSnapshot) -> Vokabular in
                let data = queryDocumentSnapshot.data()
                
                let imageName = data["imageName"] as? String ?? ""
                let wordDe = data["wordDe"] as? String ?? ""
                let wordEng = data["wordEng"] as? String ?? ""
                let sentanceExample = data["sentanceExample"] as? String ?? ""
                
                return Vokabular(imageName: imageName, wordDe: wordDe, wordEng: wordEng, sentanceExample: sentanceExample)
            }
        }
    }
    
    func fetchDataA2() {
        db.collection("vocabularyA2").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No data to show")
                return
            }
            
            self.words = documents.map {(queryDocumentSnapshot) -> Vokabular in
                let data = queryDocumentSnapshot.data()
                
                let imageName = data["imageName"] as? String ?? ""
                let wordDe = data["wordDe"] as? String ?? ""
                let wordEng = data["wordEng"] as? String ?? ""
                let sentanceExample = data["sentanceExample"] as? String ?? ""
                
                return Vokabular(imageName: imageName, wordDe: wordDe, wordEng: wordEng, sentanceExample: sentanceExample)
            }
        }
    }
    
    func fetchDataB1() {
        db.collection("vocabularyB1").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No data to show")
                return
            }
            
            self.words = documents.map {(queryDocumentSnapshot) -> Vokabular in
                let data = queryDocumentSnapshot.data()
                
                let imageName = data["imageName"] as? String ?? ""
                let wordDe = data["wordDe"] as? String ?? ""
                let wordEng = data["wordEng"] as? String ?? ""
                let sentanceExample = data["sentanceExample"] as? String ?? ""
                
                return Vokabular(imageName: imageName, wordDe: wordDe, wordEng: wordEng, sentanceExample: sentanceExample)
            }
        }
    }
    
    func fetchDataB2() {
        db.collection("vocabularyB2").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No data to show")
                return
            }
            
            self.words = documents.map {(queryDocumentSnapshot) -> Vokabular in
                let data = queryDocumentSnapshot.data()
                
                let imageName = data["imageName"] as? String ?? ""
                let wordDe = data["wordDe"] as? String ?? ""
                let wordEng = data["wordEng"] as? String ?? ""
                let sentanceExample = data["sentanceExample"] as? String ?? ""
                
                return Vokabular(imageName: imageName, wordDe: wordDe, wordEng: wordEng, sentanceExample: sentanceExample)
            }
        }
    }
    
    func fetchDataC1() {
        db.collection("vocabularyC1").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No data to show")
                return
            }
            
            self.words = documents.map {(queryDocumentSnapshot) -> Vokabular in
                let data = queryDocumentSnapshot.data()
                
                let imageName = data["imageName"] as? String ?? ""
                let wordDe = data["wordDe"] as? String ?? ""
                let wordEng = data["wordEng"] as? String ?? ""
                let sentanceExample = data["sentanceExample"] as? String ?? ""
                
                return Vokabular(imageName: imageName, wordDe: wordDe, wordEng: wordEng, sentanceExample: sentanceExample)
            }
        }
    }
    
    
    
}
