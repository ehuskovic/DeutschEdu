//
//  LevelsViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 22/11/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

class LevelsViewModel: ObservableObject {
    @Published private(set) var levels = [
        Level(topic: "A1", color: "pinkorange", levelText: "Beginning"),
        Level(topic: "A2", color: "darkerPink", levelText: "Beginning"),
        Level(topic: "B1", color: "pinkPurple", levelText: "Intermediate"),
        Level(topic: "B2", color: "purple", levelText: "Intermediate"),
        Level(topic: "C1", color: "bluePurple", levelText: "Advanced")
    ]
}
