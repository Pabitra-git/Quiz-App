//
//  QuestionModel.swift
//  Quizzy
//
//  Created by Pabitra Ranjan Sahoo   on 25/03/24.
//

import Foundation

struct QuizModel {
    let question: String
    let answer: String
    
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
}
