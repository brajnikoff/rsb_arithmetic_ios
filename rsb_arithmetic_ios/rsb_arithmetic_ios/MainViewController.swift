//
//  MainViewController.swift
//  rsb_arithmetic_ios
//
//  Created by Roman Brazhnikov on 05.01.2021.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - Properties
    private let rangeMaximum = 9
    private var operand_1: Int = .zero
    private var operand_2: Int = .zero
    private var sum: Int {
        operand_1 + operand_2
    }
    
    private var inputEnabled: Bool = false {
        didSet {
            answerTextField.isUserInteractionEnabled = inputEnabled
            answerButton.isEnabled = inputEnabled
        }
    }
    
    private var taskCount = 5
    
    // MARK: - Outlets
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var answerButton: UIButton!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        newTask()
    }
    
    // MARK: - Actions
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        inputEnabled = false
        
        if let answer = Int(answerTextField.text ?? "") {
            handle(answer: answer)
        } else {
            print("Input error")
        }
    }
    
    // MARK: - Logic
    private func newTask() {
        operand_1 = Int.random(in: 0...rangeMaximum)
        operand_2 = Int.random(in: 0...rangeMaximum)
        
        taskLabel.text = "\(operand_1) + \(operand_2) = "
    }
    
    private func newTaskWithDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
            self?.newTask()
            self?.inputEnabled = true
        }
    }
    
    private func handle(answer: Int) {
        if answer == sum {
            print("Correct")
            handleCorrect()
            
        } else {
            print("try again")
            handleWrong()
        }
    }
    
    private func handleCorrect() {
        taskCount -= 1
        taskLabel.text = "Correct!"
        answerTextField.text = ""
        
        if taskCount > 0 {
            newTaskWithDelay()
        } else {
            finish()
        }
        
    }
    
    private func handleWrong() {
        taskLabel.text = "Wrong!"
        answerTextField.text = ""
        newTaskWithDelay()
    }
    
    private func finish() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            print("Result")
            self?.taskLabel.text = "Test has been finished"
        }
    }
}