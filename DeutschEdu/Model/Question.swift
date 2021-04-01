//
//  Question.swift
//  DeutschEdu
//
//  Created by Ella Huskovic on 12/12/2020.
//  Copyright © 2020 Ella Huskovic. All rights reserved.
//

import Foundation

struct Question: Hashable {
    var question: String?
    var a: String?
    var b: String?
    var c: String?
    var answer: String?
    var isSubmitted = false
    var completed = false
}
