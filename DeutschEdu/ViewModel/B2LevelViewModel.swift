//
//  B2LevelsViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 22/11/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

class B2LevelViewModel: ObservableObject {
    @Published private(set) var topics = [
        Level(topic: "Adjective", color: "", levelText: ""),
        Level(topic: "Partizip", color: "", levelText: ""),
        Level(topic: "Vokabular B2", color: "", levelText: ""),
        Level(topic: "B2 Quiz", color: "", levelText: "")

    ]
}
