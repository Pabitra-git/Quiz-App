//
//  ViewController.swift
//  Quizzy
//
//  Created by Pabitra Ranjan Sahoo   on 25/03/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let isAnswerRight = quiz.checkAnswer(userAnswer)
        
        if isAnswerRight {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        quiz.updatingQuestionNumber()
    }
    
    @objc func updateUI() {
        questionLabel.text = quiz.getQuestionText()
        progressBar.progress = quiz.getProgress()
        scoreLabel.text = "Score: \(quiz.getScore())"
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }
    
}

