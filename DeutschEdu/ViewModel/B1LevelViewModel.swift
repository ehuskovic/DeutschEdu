//
//  B1LevelViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 22/11/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

class B1LevelViewModel: ObservableObject {
    @Published private(set) var topics = [
        Level(topic: "Nebensätze", color: "", levelText: ""),
        Level(topic: "Plusquamperfekt", color: "", levelText: ""),
        Level(topic: "Vokabular B1", color: "", levelText: ""),
        Level(topic: "B1 Quiz", color: "", levelText: "")

    ]
}
