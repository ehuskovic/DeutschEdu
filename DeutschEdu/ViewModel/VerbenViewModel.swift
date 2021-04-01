//
//  VerbenViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 08/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation
import FirebaseFirestore

class VerbenViewModel: ObservableObject{
    @Published var verbInfo = [TenseInfo]()
    private var db = Firestore.firestore()
    
    func getVerbInfo() {
              db.collection("verbs").addSnapshotListener{ (querySnapshot, error) in
                     guard let documents = querySnapshot?.documents else {
                         print("No data to show")
                         return
                     }
                     
                     self.verbInfo = documents.map {(queryDocumentSnapshot) -> TenseInfo in
                         let data = queryDocumentSnapshot.data()
                         
                       let largeHeader = data["largeHeader"] as? String ?? ""



                       return TenseInfo(largeHeader: largeHeader)
                     }
                 }
             }
}
