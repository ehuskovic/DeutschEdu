//
//  C1LevelViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 05/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

class C1LevelViewModel: ObservableObject {
    @Published private(set) var topics = [
        Level(topic: "Vokabular C1", color: "", levelText: ""),
        Level(topic: "C1 Quiz", color: "", levelText: "")

    ]
}
