//
//  A2LevelViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 22/11/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

class A2LevelViewModel: ObservableObject {
    @Published private(set) var topics = [
        Level(topic: "Präteritum", color: "", levelText: ""),
        Level(topic: "Modalverben", color: "", levelText: ""),
        Level(topic: "Perfekt", color: "", levelText: ""),
        Level(topic: "Vokabular A2", color: "", levelText: ""),
        Level(topic: "A2 Quiz", color: "", levelText: "")

    ]
}
