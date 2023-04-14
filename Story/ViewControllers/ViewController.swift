//
//  ViewController.swift
//  Story
//
//  Created by mac on 4/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var storyLabel: UILabel!
    
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    
    
    private let story = Story.getStory()
    private var answerChosen: [Answer] = []
    private var questionIndex = 0
    var currentAnswer: [Answer] {
        story[questionIndex].answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        updateUI()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.answer = answerChosen
    }

    @IBAction func firstButtonPressed(_ sender: UIButton) {
        let answer = currentAnswer[0]
        answerChosen.append(answer)
        nextQuestion()
    }
    
    
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        
        let answer = currentAnswer[1]
        answerChosen.append(answer)
        nextQuestion()
        
    }
    
}

extension ViewController {
    
    private func updateUI() {
        
        // get current question
        let currentQuestion = story[questionIndex]
        let currentA = currentQuestion.answer[0]
        let currentB = currentQuestion.answer[1]
        
        // set current question for label
        storyLabel?.text = currentQuestion.title
        
        showCurrentAnswers(for: currentA)
        showCurrentAnswers(for: currentB)
    }
    
    private func showCurrentAnswers(for answer: Answer) {
        print(questionIndex)
       
        switch answer.type {
        case .first:
            answerButton1?.setTitle(answer.title, for: .normal)
        case .second:
            answerButton2?.setTitle(answer.title, for: .normal)
        }
        
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < story.count {
            updateUI()
            return
        }
        performSegue(withIdentifier: "showResult", sender: nil)
    }
    
}


