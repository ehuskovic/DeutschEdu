//
//  AdjectivesViewModel.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 08/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

class AdjectivesViewModel: ObservableObject {
    @Published private(set) var adjectives = [
        Adjective(adjective: "old", name: "alt", image: "old", adjectiveOpp: "young", nameOpp: "jung", imageOpp: "young"),
        Adjective(adjective: "big", name: "groß", image: "big", adjectiveOpp: "small", nameOpp: "klein", imageOpp: "small"),
        Adjective(adjective: "healthy", name: "gesund", image: "healthy", adjectiveOpp: "sick", nameOpp: "krank", imageOpp: "sick"),
        Adjective(adjective: "fat", name: "dick", image: "fat", adjectiveOpp: "skinny", nameOpp: "dünn", imageOpp: "skinny"),
        Adjective(adjective: "hardworking", name: "fleißig", image: "hardworking", adjectiveOpp: "lazy", nameOpp: "faul", imageOpp: "lazy"),
        Adjective(adjective: "strong", name: "stark", image: "strong", adjectiveOpp: "weak", nameOpp: "schwach", imageOpp: "weak"),
        Adjective(adjective: "sunny", name: "sonig", image: "sunny", adjectiveOpp: "cloudy", nameOpp: "wolkig", imageOpp: "cloudy"),
        Adjective(adjective: "happy", name: "fröhlich", image: "happy", adjectiveOpp: "sad", nameOpp: "traurig", imageOpp: "sad"),
        Adjective(adjective: "fast", name: "schnell", image: "fast", adjectiveOpp: "slow", nameOpp: "langsam", imageOpp: "slow"),
        Adjective(adjective: "expensive", name: "teuer", image: "expensive", adjectiveOpp: "cheap", nameOpp: "bilig", imageOpp: "cheap"),
        Adjective(adjective: "poor", name: "arm", image: "poor", adjectiveOpp: "rich", nameOpp: "reich", imageOpp: "rich"),
        Adjective(adjective: "light", name: "leicht", image: "light", adjectiveOpp: "hard", nameOpp: "schwer", imageOpp: "hard"),
        Adjective(adjective: "open", name: "offen", image: "open", adjectiveOpp: "closed", nameOpp: "geschlossen", imageOpp: "closed")
    ]
}
