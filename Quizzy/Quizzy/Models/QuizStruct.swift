//
//  QuizStruct.swift
//  Quizzy
//
//  Created by Pabitra Ranjan Sahoo   on 25/03/24.
//

import Foundation

struct Quiz {
    let quiz: [QuizModel] = [QuizModel(question: "Two plus six is ten.", answer: "False"),
                           QuizModel(question: "New delhi is the capital of India.", answer: "True"),
                           QuizModel(question: "7 % 3 == 0", answer: "False"),
                           QuizModel(question: "There are 8 planets in oue solar system.", answer: "True"),
                           QuizModel(question: "India has the 2nd most population in the world.", answer: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func updatingQuestionNumber() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(_ answer: String) -> Bool{
        if answer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }

}
