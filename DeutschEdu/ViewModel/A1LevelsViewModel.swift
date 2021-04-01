//
//  A1LevelsViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 22/11/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

class A1LevelsViewModel: ObservableObject {
    @Published private(set) var topics = [
        Level(topic: "Verben", color: "", levelText: ""),
        Level(topic: "Vokabular A1", color: "", levelText: ""),
        Level(topic: "Nummer", color: "", levelText: ""),
        Level(topic: "A1 Quiz", color: "", levelText: "")
    ]
}
