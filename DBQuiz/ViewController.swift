//
//  ViewController.swift
//  DBQuiz
//
//  Created by Stefan Claussen on 27/04/2016.
//  Copyright © 2016 One foot after the other. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions = ["7 + 7", "Capital of England", "Person I care most about"]
    let answers = ["14", "London", "Mum"]
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextQuestion(sender: AnyObject) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        answerLabel.text = answers[currentQuestionIndex]
    }
}

